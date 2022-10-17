import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  var images = {
    "Science Department": "uni.jpeg",
    "Engineering Department": "uni5.jpeg",
    "Computer Department": "uni2.jpeg",
    "Business Department": "uni3.jpeg",
    "Arts Department": "uni4.jpeg"
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 700,
      padding: const EdgeInsets.all(5),
      child: ListView(
        children: [
          const Text(
            "Welcome to The Sahara University",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          const Text(
            "MOTTO",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "To be the leading university in Technology and innovations",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "VISION",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "To be a top rated university of technology",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "MISSION",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "To provide technological education and training and to contribute towards the advancement of society through research and innovation",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            "Gallery",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.all(3),
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 170,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "img/" +
                                images.values.elementAt(
                                  index,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Text(images.keys.elementAt(index))
                  ],
                );
              },
            ),
          ),
          Container(
            height: 4,
            color: Colors.deepOrange,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Contacts",
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepOrange,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      Text(
                        "www.sahara.ac.ke",
                      ),
                      Text(
                        "P.O Box 0213-0100",
                      ),
                      Text(
                        "Email: info@sahara.ke",
                      ),
                      Text(
                        "Located Along Haille Selassie Ave.",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: const [
                      Text(
                        "Tel 1:+254 745 787 487",
                      ),
                      Text(
                        "Tel 1:+254 710 821 966",
                      ),
                      Text(
                        "Fax: 2202220010",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
