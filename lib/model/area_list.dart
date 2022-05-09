// import 'package:flutter/material.dart';
//
// class  areaSearchList extends SearchDelegate<String>{
//   final search1 =[
//     "Dhaka",
//     "Feni",
//     "Rangamati",
//     "Cox-Bazar",
//     "Chadpur",
//     "Lakshmipur",
//   ];
//   final recentSearch =[
//     "Dhaka",
//     "Feni",
//     "Rangamati",
//     "Cox-Bazar",
//     "Chadpur",
//     "Lakshmipur",
//   ];
//
//   @override
//   List<Widget>? buildActions(BuildContext context) => [
//     IconButton(onPressed: (){
//       if(query.isEmpty) {
//         close(context, '');
//       }
//       else{
//         query ='';
//       }
//       },
//
//     icon:Icon(Icons.clear),
//     ),
//
//   ];
//
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     // TODO: implement buildLeading
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     throw UnimplementedError();
//   }}