/*import 'dart:async';
import 'dart:collection';

import 'package:covide_app/models/unidadesDeVacina.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';

final double zoom = 10.0;

final CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(ubs[0].localization[0], ubs[0].localization[1]),
  zoom: zoom,
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

    _markers[markerId] = marker;

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

Widget mapView1() {
  return GoogleMap(
    mapType: MapType.normal,
    initialCameraPosition: _kGooglePlex,
    onMapCreated: _onMapCreated,
    // markers: Set<Marker>.of(_markers.values),
    myLocationEnabled: true,
    onCameraMove: (CameraPosition position) {},
  );
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

        _markers[markerId] = updatedMarker;
      }
    },
  );
}*/
