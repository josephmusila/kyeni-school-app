import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: const Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.deepOrangeAccent,
          
          color: Colors.blue,

        ),
      ),
    );
  }
}
