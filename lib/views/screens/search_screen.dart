

// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

// class SearchScreen extends SearchDelegate {
  

//   @override
//   ThemeData appBarTheme(BuildContext context) {
//     return ThemeData(
//       appBarTheme: AppBarTheme(
//         backgroundColor: Color,
//         elevation: 0,
//       ),
//       textTheme: const TextTheme(
//         titleLarge: TextStyle(fontSize: 16.0, color: Colors.white),
//       ),
//       inputDecorationTheme: const InputDecorationTheme(
//         border: InputBorder.none,
//         hintStyle: TextStyle(fontSize: 16.0, color: Colors.white60),
//       ),
//     );
//   }

//   @override
//   String get searchFieldLabel => 'Search contacts';

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () => query = '',
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () => close(context, null),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     contactsSearchController.search(query);
//     return Obx(() => ListView.builder(
//           itemCount: contactsSearchController.searchResults.length,
//           itemBuilder: (context, index) {
//             var result = contactsSearchController.searchResults[index];
//             // ListTile to display each result
//           },
//         ));
//   }
  
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     throw UnimplementedError();
//   }

//   // @override
//   // Widget buildSuggestions(BuildContext context) {
//   //   // Suggestions logic
//   // }
// }
