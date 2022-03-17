import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.topLeft,
                height: 50,
                child: Row(
                  children: [
                    Image.asset('assets/images/logo.jpg'),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("AppName", style: TextStyle(color:Colors.white,fontSize: 30),),
                    )
                    
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  child: Carousel(
                    images: [
                      Image.asset(
                          'assets/images/home1.jpg'),
                      Image.network(
                          "https://wallpapercave.com/wp/wp3124989.jpg"),
                      Image.asset(
                          'assets/images/home2.jpg'),
                      Image.asset(
                          'assets/images/home3.jpg'),
                      Image.asset(
                          'assets/images/home4.jpg'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 60.0),
                      child: Text(
                          "Want to know more,\nabout the Fish \nyou’re looking at?",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
