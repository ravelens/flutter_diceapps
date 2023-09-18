// import 'package:favorite_places/models/place.dart';
// import 'package:favorite_places/providers/user_places.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class NewPlace extends ConsumerStatefulWidget {
//   // final _formKey = GlobalKey<FormState>();
//   NewPlace({super.key});

//   @override
//   ConsumerState<NewPlace> createState() => _NewPlaceState();
// }

// class _NewPlaceState extends ConsumerState<NewPlace> {
//   final _formKey = GlobalKey<FormState>();
//   var _placeName = '';

//   @override
//   Widget build(BuildContext context) {
//     final List<Place> placeList = ref.watch(userPlacesProvider.n);
    
//     void _addNewPlace() {
//       if (_formKey.currentState!.validate()) {
//         _formKey.currentState!.save();
//         print(placeList);
//         placeList.add(
//           Place(placeName: _placeName),
//         );
//       }
//       Navigator.of(context).pop();
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add New Place'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 12,
//           vertical: 8,
//         ),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 maxLength: 100,
//                 initialValue: '',
//                 decoration: const InputDecoration(
//                   label: Text('Title'),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Place Name must not be null';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _placeName = value!;
//                 },
//               ),
//               Expanded(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ElevatedButton.icon(
//                       onPressed: _addNewPlace,
//                       icon: const Icon(Icons.add),
//                       label: const Text("Add Place"),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
