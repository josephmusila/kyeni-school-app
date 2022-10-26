import 'package:flutter/material.dart';

class Lecturer extends StatefulWidget {
  const Lecturer({ Key? key }) : super(key: key);

  @override
  _LecturerState createState() => _LecturerState();
}

class _LecturerState extends State<Lecturer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,

      child:const Text("lect") ,
    );
  }
}

