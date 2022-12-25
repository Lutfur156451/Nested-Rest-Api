// // //
// // // import 'package:http/http.dart' as http;
// // //
// // // import 'package:ecomarce/controller/getPost.dart';
// // //
// // // class helper {
// // //   Future <GetPost?> getPost() async {
// // //     var response = await http.get(
// // //         Uri.parse('https://jsonplaceholder.typicode.com/photos'));
// // //     if (response.statusCode == 200) {
// // //       var json = response.body;
// // //       return getPostFromJson(json);
// // //     }
// // //   }
// // // }
// //
// //
// // import 'package:ecomarce/controller/getPost.dart';
// // import 'package:http/http.dart'as http;
// //
// // class postHelper{
// //
// //
// //   Future getPost()async{
// //     var response= await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
// //     if(response.statusCode==200){
// //       var json=response.body;
// //       return getPostFromJson(json);
// //
// //     }
// //
// //   }
// //
// //
// // }
//
//
// import 'dart:convert';
//
// import 'package:ecomarce/userModel1.dart';
//
// class postHelper{
//   Future<UserModel1?> getData() async {
//     final response =
//     await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//     if (response.statusCode == 200) {
//       // for (Map i in data) {
//       //   print(i['id']);
//       //
//       //   userList?.add(UserModel1.fromJson(i));
//       // }
//       var data = jsonDecode(response.body.toString());
//
//       return UserModel1(data)
//     }
//   }
//
// }