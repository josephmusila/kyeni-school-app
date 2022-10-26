import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/app_cubit.dart';


class StudentWelcomePage extends StatefulWidget {
  const StudentWelcomePage({Key? key}) : super(key: key);

  @override
  _StudentWelcomePageState createState() => _StudentWelcomePageState();
}

class _StudentWelcomePageState extends State<StudentWelcomePage> {
  var regNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Welcome to Sahara University Student's Portal"),
          Column(
            children: [
              TextField(
                controller: regNumber,
                decoration: const InputDecoration(
                  labelText: "Enter Your Registration Number",
                  hintText: "eg. SCII/12345/2019",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 5.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  BlocProvider.of<AppCubit>(context).getData(regNumber.text);
                },
              ),
            ],
          ),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Only Registered Students Can Log In",
                style: TextStyle(
                  color: Colors.blue,
                  // fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),
              const Text("For further asssitance visit admissions office"),
            ],
          )
        ],
      ),
    );
  }
}
