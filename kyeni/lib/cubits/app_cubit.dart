import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import "package:flutter_secure_storage/flutter_secure_storage.dart";

import '../services/studentServices.dart';
import 'app_cubit_states.dart';

class AppCubit extends Cubit<CubitStates> {
  late final HttpService httpService;
  // ignore: prefer_typing_uninitialized_variables
  late final studentData;

  AppCubit({
    required this.httpService,
  }) : super(StudentWelcomeState());

  // final storage = const FlutterSecureStorage();
  var isLogged = false;

  void getData(String regNumber) async {
    try {
      emit(StudentDataLoadingState());
      studentData = await httpService.studentData(regNumber);
      var data = await http.get(
          Uri.parse("http://127.0.0.1:8000/api/students/login/" + regNumber));
      print(data);
      if (studentData == null) {
        print(studentData);
        emit(StudentDataErrorState());
      } else {
        print(studentData);
        // emit(StudentDataErrorState());
        emit(StudentDataLoadedState(studentData));
        //  storage.write(key: "reg", value: regNumber);
        print("stored");
      }
      // ignore: empty_catches
    } catch (e) {}
  }
}
