import 'dart:convert';

import 'package:ecomarce/controller/getPost.dart';
import 'package:ecomarce/controller/helper.dart';
import 'package:ecomarce/controller/testModel.dart';
import 'package:ecomarce/product.dart';
import 'package:ecomarce/userModel1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isloaded = false;
  List<Product>? userList = [];

  // getData1() async {
  //   userList = postHelper().getPost() as List<GetPost>?;
  //   setState(() {
  //     isloaded = true;
  //   });
  // }

  Future<List<Product>?> getData() async {
    final response = await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        print(i['title']);

        userList?.add(Product.fromJson(i));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: userList?.length,
                  itemBuilder: (context, index) {
                    return Container(

                      child: Column(

                        children: [

                          // Text(userList![index].title.toString()),

                          Image.network(userList![index].category!.image.toString()),

                          Image.network(userList![index].images!.first),
                          Text(userList![index].id.toString()),
                          Text(userList![index].category!.name.toString())
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ),
        )
      ],
    ));
  }
}
