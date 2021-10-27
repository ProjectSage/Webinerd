import 'package:flutter/material.dart';
import 'package:webinerd/widgets/backButton.dart';
import 'package:webinerd/widgets/griditems.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PopularOrganisers extends StatefulWidget {
  @override
  _PopularOrganisersState createState() => _PopularOrganisersState();
}

class _PopularOrganisersState extends State<PopularOrganisers> {
  List<Item> itemList;
  List<Item> selectedList;
  bool values = true;
  Color baseColor = Color(0xFFF26272C);
  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = List();
    selectedList = List();
    itemList.add(Item("assets/googleFrame.png", 1, "5G"));
    itemList.add(Item("assets/ted.png", 2, "Agile"));
    itemList.add(Item("assets/tesla.png", 3, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 4, "AI"));
    itemList.add(Item("assets/cisco.png", 5, "ERP"));
    itemList.add(Item("assets/amazon.png", 6, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 7, "5G"));
    itemList.add(Item("assets/ted.png", 8, "Agile"));
    itemList.add(Item("assets/tesla.png", 9, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 10, "AI"));
    itemList.add(Item("assets/cisco.png", 11, "ERP"));
    itemList.add(Item("assets/amazon.png", 12, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 13, "5G"));
    itemList.add(Item("assets/ted.png", 14, "Agile"));
    itemList.add(Item("assets/tesla.png", 15, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 16, "AI"));
    itemList.add(Item("assets/cisco.png", 17, "ERP"));
    itemList.add(Item("assets/amazon.png", 18, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 19, "5G"));
    itemList.add(Item("assets/ted.png", 20, "Agile"));
    itemList.add(Item("assets/tesla.png", 21, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 22, "AI"));
    itemList.add(Item("assets/cisco.png", 23, "ERP"));
    itemList.add(Item("assets/amazon.png", 24, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 25, "5G"));
    itemList.add(Item("assets/ted.png", 26, "Agile"));
    itemList.add(Item("assets/tesla.png", 27, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 28, "AI"));
    itemList.add(Item("assets/cisco.png", 29, "ERP"));
    itemList.add(Item("assets/amazon.png", 30, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 31, "5G"));
    itemList.add(Item("assets/ted.png", 32, "Agile"));
    itemList.add(Item("assets/tesla.png", 33, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 34, "AI"));
    itemList.add(Item("assets/cisco.png", 35, "ERP"));
    itemList.add(Item("assets/amazon.png", 36, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 37, "5G"));
    itemList.add(Item("assets/ted.png", 38, "Agile"));
    itemList.add(Item("assets/tesla.png", 39, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 40, "AI"));
    itemList.add(Item("assets/cisco.png", 41, "ERP"));
    itemList.add(Item("assets/amazon.png", 42, "Big Data"));
    itemList.add(Item("assets/googleFrame.png", 43, "5G"));
    itemList.add(Item("assets/ted.png", 44, "Agile"));
    itemList.add(Item("assets/tesla.png", 45, "Automotive"));
    itemList.add(Item("assets/oracleFrame.png", 46, "AI"));
    itemList.add(Item("assets/cisco.png", 47, "ERP"));
    itemList.add(Item("assets/amazon.png", 48, "Big Data"));
  }

  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF26272C);
    final screen = MediaQuery.of(context);

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///
    return Scaffold(
      // appBar: getAppBar(),
      backgroundColor: baseColor,
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(37, 42, 61, 1),
            height: screen.size.height / 15,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screen.size.width / 30),
                  child: Container(
                    color: baseColor,
                    height: screen.size.height / 15,
                    width: screen.size.width / 6,
                    child: Center(
                        child: Backbutton(
                            img: Image.asset('assets/backbutton.png'),
                            bgcolor: Color.fromRGBO(37, 42, 61, 1))),
                  ),
                ),
              ],
            ),
          ),
          new Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: GridView.builder(
                  itemCount: itemList.length,
                  primary: false,
                  padding: const EdgeInsets.only(
                      bottom: 0, left: 20, right: 20, top: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return GridItem(
                        item: itemList[index],
                        isSelected: (bool value) {
                          setState(() {
                            if (value) {
                              selectedList.add(itemList[index]);
                            } else {
                              selectedList.remove(itemList[index]);
                            }
                          });
                          print("$index : $value");
                        },
                        key: Key(itemList[index].rank.toString()));
                  }),
            ),
          ),
          // Custombutton()
        ],
      ),
    );
  }

  //
}

class Item {
  String imageUrl;
  int rank;
  String name;

  Item(this.imageUrl, this.rank, this.name);
}










// import 'package:flutter/material.dart';
// import 'package:webinerd/widgets/gridItems.dart';
// import 'package:webinerd/screens/homePageBtns/btns.dart';
// import 'package:webinerd/widgets/backButton.dart';

// class PopularOrganisers extends StatefulWidget {
//   const PopularOrganisers({Key key}) : super(key: key);

//   @override
//   _PopularOrganisersState createState() => _PopularOrganisersState();
// }

// class _PopularOrganisersState extends State<PopularOrganisers> {
//   List<Items> itemList;
//   List<Items> selectedList;
//   bool values = true;

//   loadList() {
//     itemList = List();
//     selectedList = List();
//     itemList.add(Items("assets/5G.png", 1, "5G"));
//     itemList.add(Items("assets/Agile.png", 2, "Agile"));
//     itemList.add(Items("assets/Automotive.png", 3, "Automotive"));
//     itemList.add(Items("assets/AI.png", 4, "AI"));
//     itemList.add(Items("assets/ERP.png", 5, "ERP"));
//     itemList.add(Items("assets/BigData.png", 6, "Big Data"));
//     itemList.add(Items("assets/Marketing.png", 7, "Marketing"));
//     itemList.add(Items("assets/Advertising.png", 8, "Advertising"));
//     itemList.add(Items("assets/CRM.png", 9, "CRM"));
//     itemList.add(Items("assets/Drones.png", 10, "Drones"));
//     itemList.add(Items(
//         "assets/DigitalTransformation.png", 11, "Digital Transformation"));
//     itemList.add(Items("assets/Cloud.png", 12, "Cloud"));
//     itemList.add(Items("assets/DataCenter.png", 13, "Data Centre"));
//     itemList.add(Items("assets/DataScience.png", 14, "Data Science"));
//     itemList.add(Items("assets/RPA.png", 15, "RPA"));
//     itemList.add(Items("assets/DevOps.png", 16, "DevOps"));
//     itemList
//         .add(Items("assets/ChipsProcessors.png", 17, "Chips And Processors"));
//     itemList.add(Items("assets/Gaming.png", 18, "Gaming"));
//     itemList.add(Items("assets/Microservices.png", 19, "Microservices"));
//     itemList.add(Items("assets/OpenSource.png", 20, "Open Source"));
//     itemList.add(Items("assets/Mobility.png", 21, "Mobility"));
//     itemList.add(Items("assets/Networking.png", 22, "Networking"));
//     itemList.add(Items("assets/Database.png", 23, "Database"));
//     itemList.add(Items("assets/IOT.png", 24, "IoT"));
//     itemList.add(Items("assets/Printers.png", 25, "Printers"));
//     itemList.add(Items("assets/Robotics.png", 26, "Robotics"));
//     itemList.add(Items("assets/MachineLearning.png", 27, "Machine Learning"));
//     itemList.add(Items("assets/Software.png", 28, "Software"));
//     itemList.add(Items("assets/Hardware.png", 29, "Hardware"));
//     itemList.add(Items("assets/Security.png", 30, "Security"));
//     itemList.add(Items("assets/ARVR.png", 31, "AR/VR"));
//     itemList.add(Items("assets/Mobile.png", 32, "Mobile"));
//     itemList.add(Items("assets/Servers.png", 33, "Servers"));
//     itemList.add(Items("assets/Semiconductor.png", 34, "Semiconductors"));
//     itemList.add(Items("assets/Financial.png", 35, "Financial Services"));
//     itemList.add(Items("assets/Transportation.png", 36, "Transportation"));
//     itemList.add(Items("assets/Aviation.png", 37, "Aviation"));
//     itemList.add(Items("assets/Healthcare.png", 38, "Health Care"));
//     itemList.add(Items("assets/Telecom.png", 39, "Telecom"));
//     itemList.add(Items("assets/Consumer.png", 40, "Consumer Electronics"));
//     itemList.add(Items("assets/Biotechnology.png", 41, "Biotechnology"));
//     itemList.add(Items("assets/Retail.png", 42, "Retail"));
//     itemList.add(Items("assets/Space.png", 43, "Space"));
//     itemList.add(Items("assets/Science.png", 44, "Science"));
//     itemList.add(Items("assets/Blockchain.png", 45, "Blockchain"));
//     itemList.add(Items("assets/Energy.png", 46, "Energy"));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screen = MediaQuery.of(context);
//     Color baseColor = Color(0xFFF26272C);

//     return Scaffold(
//         backgroundColor: baseColor,
//         // body: Column(
//         //   children: [
//         //     Container(
//         //       color: Color.fromRGBO(37, 42, 61, 1),
//         //       height: screen.size.height / 15,
//         //       child: Row(
//         //         children: [
//         //           Padding(
//         //             padding: EdgeInsets.only(left: screen.size.width / 30),
//         //             child: Container(
//         //               color: baseColor,
//         //               height: screen.size.height / 15,
//         //               width: screen.size.width / 6,
//         //               child: Center(
//         //                   child: Backbutton(
//         //                       img: Image.asset('assets/backbutton.png'),
//         //                       bgcolor: Color.fromRGBO(37, 42, 61, 1))),
//         //             ),
//         //           ),
//         //         ],
//         //       ),
//         //     ),

//         body: Column(
//           children: [
//             Container(
//               color: Color.fromRGBO(37, 42, 61, 1),
//               height: screen.size.height / 15,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: screen.size.width / 30),
//                     child: Container(
//                       color: baseColor,
//                       height: screen.size.height / 15,
//                       width: screen.size.width / 6,
//                       child: Center(
//                           child: Backbutton(
//                               img: Image.asset('assets/backbutton.png'),
//                               bgcolor: Color.fromRGBO(37, 42, 61, 1))),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             new Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(bottom: 40),
//                 child: GridView.builder(
//                     itemCount: itemList.length,
//                     primary: false,
//                     padding: const EdgeInsets.only(
//                         bottom: 0, left: 20, right: 20, top: 10),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio: 2,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 20,
//                     ),
//                     itemBuilder: (context, index) {
//                       return GridItem(
//                           item: itemList[index],
//                           isSelected: (bool value) {
//                             setState(() {
//                               if (value) {
//                                 selectedList.add(itemList[index]);
//                               } else {
//                                 selectedList.remove(itemList[index]);
//                               }
//                             });
//                             print("$index : $value");
//                           },
//                           key: Key(itemList[index].rank.toString()));
//                     }),
//               ),
//             ),

//             // Expanded(
//             //   child: GridView.count(
//             //     crossAxisCount: 3,
//             //     children: List.generate(20, (index) {
//             //       return Padding(
//             //         padding: EdgeInsets.only(top: 0),
//             //         child: Container(
//             //           // color: Colors.white,
//             //           height: screen.size.height / 16,
//             //           child: GestureDetector(
//             //             child: ListView.builder(
//             //               itemCount: 10,
//             //               scrollDirection: Axis.horizontal,
//             //               controller: PageController(viewportFraction: 0.3),
//             //               // onPageChanged: (int index) => setState(() => _index = index),
//             //               itemBuilder: (_, i) => Image.asset(
//             //                 'assets/googleFrame.png',
//             //                 fit: BoxFit.contain,
//             //                 width: screen.size.width / 3.2,
//             //               ),
//             //             ),
//             //           ),
//             //         ),
//             //       );
//             //     }),
//             //   ),
//             // ),
//           ],
//         ));
//   }
//   // }
// }

// class Items {
//   String imageUrl;
//   int rank;
//   String name;

//   Items(this.imageUrl, this.rank, this.name);
// }
