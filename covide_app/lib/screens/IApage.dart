import 'dart:async';

import 'package:covide_app/main.dart';
import 'package:covide_app/models/unidadesDeVacina.dart';
import 'package:covide_app/screens/homepage.dart';
import 'package:covide_app/widgets/mapPage.dart';
import 'package:covide_app/widgets/popUpInfos.dart';
import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';

class IA extends StatefulWidget {
  @override
  State<IA> createState() => _IAState();
}

class _IAState extends State<IA> {
  final double zoom = 16.0;

  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(ubs[0].localization[0], ubs[0].localization[1]),
    zoom: 15.0,
  );

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
    if (LatLng(ubs[0].localization[0], ubs[0].localization[1]) != null) {
      MarkerId markerId = MarkerId(_markerIdVal());
      LatLng position = LatLng(ubs[0].localization[0], ubs[0].localization[1]);
      Marker marker = Marker(
        markerId: markerId,
        position: position,
        draggable: false,
      );
      setState(() {
        _markers[markerId] = marker;
      });
      Future.delayed(Duration(seconds: 1), () async {
        GoogleMapController controller = await _mapController.future;
        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: position,
              zoom: zoom,
            ),
          ),
        );
      });
    }
  }

  Widget mapView() {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
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
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.9,
                child: mapView(),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //color: Colors.white,
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Colors.green[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Recomendamos a " + ubs[0].name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "cep: " + ubs[0].cep,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "aberta " + ubs[0].espediente,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
