import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentButton = 1;
 String beach = 'images/beach.jpg';

String mountain = 'images/mountain.jpeg';

  String desert = 'images/desert.jpg';

String buttonClick='';

String  name = "Mountain";
String buttonName = '';

String locationName ="Mustang, Nepal";
String buttonLocationName ="";

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    buttonClick = mountain;
    buttonName = name;
    buttonLocationName = locationName;
     
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff0F2940),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Transform.scale(
                  scaleX: -1,
                  child: const Icon(
                    Icons.search,
                    size: 30,
                  )),
            )
          ],
        ),
        drawer: const SafeArea(child: Drawer()),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.3,
                  color: const Color(0xff0F2940),
                )
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 40, top: 50, right: 125),
                  child: Text(
                    "Explore\nthe world",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: 'RobotoSlab'),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                   
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 50),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentButton = 1;
                                        buttonClick = mountain;
                                        buttonName = "Mountain";
                                        buttonLocationName ="Mustang, Nepal";
                                        HapticFeedback.heavyImpact();
                                        
                                      });
                                    },
                                    child: Text(
                                      "Mountain",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: currentButton == 1
                                              ? Colors.amber
                                              : Colors.black),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentButton = 2;
                                        buttonClick = beach;
                                        buttonName = "Beach";
                                        buttonLocationName ="Goa, India";
                                        HapticFeedback.heavyImpact();
                                      });
                                    },
                                    child: Text(
                                      "Beach",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: currentButton == 2
                                              ? Colors.amber
                                              : Colors.black),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentButton = 3;
                                        buttonClick = desert;
                                        buttonName = "Desert";
                                        buttonLocationName ="Dubai, UAE";
                                        HapticFeedback.heavyImpact();
                                      });
                                    },
                                    child: Text(
                                      "Desert",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: currentButton == 3
                                              ? Colors.amber
                                              : Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 60, bottom: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    // margin: const EdgeInsets.only(
                                    //     left: 30, top: 60, bottom: 100),
                                    height: 100,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5,
                                              spreadRadius: 1)
                                        ]),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(buttonClick,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                 Text(
                                  buttonName,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontFamily: 'RobotoSlab'),
                                ),
                                 Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      buttonLocationName,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily: 'RobotoSlab'),
                                    ),
                                    
                                  ],
                                )
                              ],
                            ),
                          );
                        }
                      }),
                      
                ),
               
              ],
            ),
          ],
        ));
  }
}
