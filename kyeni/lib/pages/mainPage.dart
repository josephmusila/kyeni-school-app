import 'package:flutter/material.dart';

import '../config/colors.dart';
import 'TabPages/about-us.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      // drawer: NavDrawer(),
      body: Container(
        padding: const EdgeInsets.all(1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/uni3.jpeg",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              // color: Colors.black54,
              height: MediaQuery.of(context).size.height * 0.4,
              child: const Center(
                child: Text(
                  "Sahara University",
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.black54,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: 0,
              right: 0,
              child: Container(
                // color: Colors.black54,
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.infinity,

                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: Align(
                        // alignment: Alignment.topCenter,
                        child: TabBar(
                          indicatorColor: Colors.deepOrange,
                          indicatorWeight: 5.0,
                          isScrollable: false,
                          controller: tabController,
                          labelColor: CustomColors.titleTextColor1,
                          unselectedLabelColor: Colors.grey,
                          tabs: const [
                            Tab(
                              text: "About Us",
                            ),
                            Tab(
                              text: "Courses",
                            ),
                            Tab(
                              text: "Clubs",
                            ),
                            Tab(
                              text: "Hostels",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          AboutUs(),
                          Text("coyrse"),
                          Text("clubs"),
                          Text("hostels"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// yRqoaYVb