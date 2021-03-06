import 'dart:async';

import 'package:covide_app/main.dart';
import 'package:covide_app/models/dados.dart';
import 'package:covide_app/models/unidadesDeVacina.dart';
import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/mapPage.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:covide_app/widgets/ubsList.dart';
import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'dart:math' show cos, sqrt, asin;

class UbsMap extends StatefulWidget {
  @override
  late int index;
  UbsMap({required this.index});
  State<UbsMap> createState() => _UbsMapState();
}

class _UbsMapState extends State<UbsMap> {
  @override
  initState() async {
    Position positionUser = await Geolocator.getCurrentPosition();
    LatLng position = LatLng(ubs[this.widget.index].localization[0],
        ubs[this.widget.index].localization[1]);
    await _distance(positionUser, position);
    setState(() {
      ubs[this.widget.index].distance = totalDistance;
    });

    loadDistancias = true;
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  List<Dados> rated = [];

  late LatLng ubsLocation;
  late String ubsName = ubs[this.widget.index].name;
  late String ubsCep = ubs[this.widget.index].cep;
  late String ubsHorario = ubs[this.widget.index].espediente;
  late double ubsDistance = ubs[this.widget.index].distance;

  bool loadDistancias = false;

  final double zoom = 16.0;

  double totalDistance = 0.0;

  late PolylinePoints polylinePoints;

  List<LatLng> polylineCoordinates = [];

  Map<PolylineId, Polyline> polylines = <PolylineId, Polyline>{};

  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(ubs[0].localization[0], ubs[0].localization[1]),
    zoom: 15.0,
  );

  //Set<Marker> markers = {};
  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
  int _markerIdCounter = 0;
  Completer<GoogleMapController> _mapController = Completer();

  String _markerIdVal({bool increment = false}) {
    String val = 'marker_id_$_markerIdCounter';
    if (increment) _markerIdCounter++;
    return val;
  }

  void _onMapCreated(GoogleMapController controller) async {
    _mapController.complete(controller);
    ubsLocation = LatLng(ubs[this.widget.index].localization[0],
        ubs[this.widget.index].localization[1]);
    if (LatLng(ubs[this.widget.index].localization[0],
            ubs[this.widget.index].localization[1]) !=
        null) {
      MarkerId markerId = MarkerId(_markerIdVal());
      Position positionUser = await Geolocator.getCurrentPosition();

      //LatLng position = LatLng(ubs[0].localization[0], ubs[0].localization[1]);

      Marker marker = Marker(
        markerId: markerId,
        position: LatLng(ubs[this.widget.index].localization[0],
            ubs[this.widget.index].localization[1]),
        draggable: false,
      );
      Marker markerUser = Marker(
        markerId: markerId,
        position: LatLng(positionUser.latitude, positionUser.longitude),
        draggable: false,
      );

      //markers.add(marker);
      //markers.add(markerUser);
      setState(() async {
        //_distance(positionUser, position);
        _createPolylines(positionUser, ubsLocation);
        _markers[markerId] = marker;
      });
      Future.delayed(Duration(seconds: 1), () async {
        GoogleMapController controller = await _mapController.future;
        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(positionUser.latitude, positionUser.longitude),
              zoom: zoom,
            ),
          ),
        );
      });
    }
  }

  //cria????o da rota
  _createPolylines(Position origem, LatLng dest) async {
    polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'YOUR_API_KEY',
      PointLatLng(origem.latitude, origem.longitude),
      PointLatLng(dest.latitude, dest.longitude),
      travelMode: TravelMode.transit,
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    PolylineId id = PolylineId('poly');

    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );
    setState(() {
      polylines[id] = polyline;
    });
  }

  Widget mapView() {
    return GoogleMap(
      polylines: Set<Polyline>.of(polylines.values),
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      myLocationButtonEnabled: true,
      rotateGesturesEnabled: true,
      onMapCreated: _onMapCreated,
      markers: Set<Marker>.of(_markers.values),
      myLocationEnabled: true,
      onCameraMove: (CameraPosition position) {
        if (_markers.length > 0) {
          MarkerId markerId = MarkerId(_markerIdVal());
          Marker marker = _markers[markerId]!;
          Marker updatedMarker = marker.copyWith(
            positionParam: position.target,
          );
          //setState(() {
          //_markers[markerId] = updatedMarker;
          //});
        }
      },
    );
  }

  //calcular distancia
  _distance(Position origem, LatLng dest) async {
    double distanceInMeters = await Geolocator.distanceBetween(
      origem.latitude,
      origem.longitude,
      dest.latitude,
      dest.longitude,
    );
    var lat1 = origem.latitude;
    var lon1 = origem.longitude;
    var lat2 = dest.latitude;
    var lon2 = dest.longitude;
    double _coordinateDistance(lat1, lon1, lat2, lon2) {
      var p = 0.017453292519943295;
      var c = cos;
      var a = 0.5 -
          c((lat2 - lat1) * p) / 2 +
          c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
      return 12742 * asin(sqrt(a));
    }

    /*for (int i = 0; i < polylineCoordinates.length - 1; i++) {
      totalDistance += _coordinateDistance(
        polylineCoordinates[i].latitude,
        polylineCoordinates[i].longitude,
        polylineCoordinates[i + 1].latitude,
        polylineCoordinates[i + 1].longitude,
      );
    }*/
    setState(() {
      totalDistance = distanceInMeters / 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
                (route) => false);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          iconSize: 30.0,
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width,
          color: Colors.green[200],
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                //color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.6 + 60,
                width: MediaQuery.of(context).size.width * 0.9,
                child: mapView(),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //color: Colors.white,
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Colors.green[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ubsName,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      /*Text(
                        "cep: " + ubsCep,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),*/
                      Text(
                        "aberta " + ubsHorario,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      loadDistancias
                          ? Text(
                              ubsDistance.toStringAsFixed(2) + "Km",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )

                          /* Text(
                              ubs[0].distance.toStringAsFixed(2) +
                                  " " +
                                  ubs[0].name +
                                  " " +
                                  ubs[1].distance.toStringAsFixed(2) +
                                  " " +
                                  ubs[3].name +
                                  " " +
                                  ubs[2].distance.toStringAsFixed(2) +
                                  " " +
                                  ubs[2].name +
                                  " ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )*/
                          : Text(
                              "calculando...",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
