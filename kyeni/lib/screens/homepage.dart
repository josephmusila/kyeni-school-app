import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/app_cubit.dart';
import '../logic/StudentScreenLogic.dart';
import '../pages/Lecturers.dart';
import '../pages/about.dart';
import '../pages/mainPage.dart';
import '../services/studentServices.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pages = [
    MainPage(),
  BlocProvider(
        create: (context) => AppCubit(
          httpService: HttpService(),
        ),
        child: StudentLogicScreen(),
      ),
    Lecturer(),
    About(),
    
  ];
  int currentpage = 0;
  void onSelect(int index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.deepOrangeAccent,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.black54,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        currentIndex: currentpage,
        onTap: onSelect,
        elevation: 5,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Students",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office),
            label: "Lecturers",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
