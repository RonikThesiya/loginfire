import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade100,
        elevation: 0.0,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(double.infinity, 1, 1, 1),
                items: [
                   PopupMenuItem(
                    onTap: (){

                    },
                    child: Text("English"),
                  ),
                   PopupMenuItem(
                    onTap: (){

                    },
                    child: Text("Hindi"),
                  ),
                ],
                elevation: 8.0,
              );
            },
            icon: const Icon(Icons.language),
            color: Colors.black,
          )
        ],
      ),
          body:  Center(
            child: Column(
              children: [
                Text('hello'.tr),
                SizedBox(height: 10,),
                Text('message'.tr),
              ],
            ),
          ),
    ));
  }
}

