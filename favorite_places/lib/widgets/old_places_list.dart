// import 'package:favorite_places/models/place.dart';
// import 'package:favorite_places/providers/user_places.dart';
// import 'package:favorite_places/widgets/new_place.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class OldPlacesList extends ConsumerStatefulWidget {
//   const OldPlacesList({super.key});

//   @override
//   ConsumerState<OldPlacesList> createState() => _OldPlacesListState();
// }

// class _OldPlacesListState extends ConsumerState<OldPlacesList> {
//   void _addPlaces() {
//     Navigator.of(context).push<Place>(
//       MaterialPageRoute(
//         builder: (ctx) => NewPlace(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final placeList = ref.watch(placesProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your Places'),
//         actions: [
//           IconButton(
//             onPressed: _addPlaces,
//             icon: const Icon(
//               Icons.add,
//             ),
//           ),
//         ],
//       ),
//       body: ListView.builder(
//           itemCount: placeList.length, itemBuilder: (ctx, index) {
//             ListTile(
//               title: Text (placeList[index].placeName),
//             );
//           }),
//     );
//   }
// }
