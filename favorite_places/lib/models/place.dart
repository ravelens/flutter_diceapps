
import 'dart:io';

import 'package:uuid/uuid.dart';

final uuid = Uuid();

class Place {
  Place({required this.placeName, required this.image}) : id = uuid.v4();
  
  final String id;
  final String placeName;
  final File image;

}