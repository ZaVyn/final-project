import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/asset.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static dart() {}
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
     child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: asset.colorPrimary,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Image(image: NetworkImage('https://raw.githubusercontent.com/reflan/project_if22c/main/asset/images/header_uti.jpg'),),
        ),
      ],
     ),
    );
  }
}