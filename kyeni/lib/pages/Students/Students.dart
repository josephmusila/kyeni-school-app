import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/app_cubit.dart';
import '../../cubits/app_cubit_states.dart';
import '../../models/student.dart';
import '../../widgets/navDrawer.dart';
import '../../widgets/studentDetails.dart';



class Students extends StatefulWidget {
  final StudentModel students;

  const Students({Key? key, required this.students}) : super(key: key);

  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.deepOrange),
        ),
        drawer: NavDrawer(),
        body: Container(
          child: BlocBuilder<AppCubit, CubitStates>(
            builder: (context, state) {
              if (state is StudentDataLoadedState) {
                var data = state.studentData;
                return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 0),
                    children: [
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        // color: Colors.deepOrangeAccent.withOpacity(0.1),
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 223, 155, 155),
                            radius: 100,
                            backgroundImage: NetworkImage(
                              widget.students.avatar,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 211, 208, 202),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: StudentDetails(student: widget.students)),
                    ],
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
