import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import "package:flutter_secure_storage/flutter_secure_storage.dart";

import '../cubits/app_cubit.dart';
import '../cubits/app_cubit_states.dart';
import '../pages/Students/StudentWelcomePage.dart';
import '../pages/Students/Students.dart';
import '../pages/Students/loadingState.dart';

class StudentLogicScreen extends StatefulWidget {
  const StudentLogicScreen({Key? key}) : super(key: key);

  @override
  State<StudentLogicScreen> createState() => _StudentLogicScreenState();
}

class _StudentLogicScreenState extends State<StudentLogicScreen> {
  // late var regNumber;

  // Future<String> getReg() async {
  //   regNumber =
  //       await BlocProvider.of<AppCubit>(context).storage.read(key: "reg");
  //   print(regNumber);
  //   return regNumber;
  // }

  @override
  void initState() {
    // getReg();

    // if (regNumber != null) {
    //   BlocProvider.of<AppCubit>(context).studentData(regNumber);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, CubitStates>(builder: (context, state) {
        if (state is StudentWelcomeState) {
          // ignore: prefer_const_constructors
          return StudentWelcomePage();
        }
        if (state is StudentDataLoadingState) {
          // ignore: prefer_const_constructors
          return LoadingScreen();
        }
        if (state is StudentDataLoadedState) {
          return Students(
            students: state.studentData,
          );
        }
        if (state is StudentDataErrorState) {
          return const Text("hello");
        } else {
          // ignore: avoid_unnecessary_containers
          return Container(
            child: const Text("error"),
          );
        }
      }),
    );
  }
}
