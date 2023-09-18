import 'dart:io';

import 'package:favorite_places/data/places_data.dart';
import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacecsNotifier extends StateNotifier<List<Place>> {
  UserPlacecsNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = Place(placeName: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacecsNotifier, List<Place>>((ref) => UserPlacecsNotifier());
