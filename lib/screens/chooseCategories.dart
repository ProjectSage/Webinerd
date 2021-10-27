import 'package:flutter/material.dart';
import 'package:webinerd/griditem.dart';
import 'package:webinerd/widgets/customButton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ChooseCategories extends StatefulWidget {
  @override
  _ChooseCategoriesState createState() => _ChooseCategoriesState();
}

class _ChooseCategoriesState extends State<ChooseCategories> {
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
    itemList.add(Item("assets/5G.png", 1, "5G"));
    itemList.add(Item("assets/Agile.png", 2, "Agile"));
    itemList.add(Item("assets/Automotive.png", 3, "Automotive"));
    itemList.add(Item("assets/AI.png", 4, "AI"));
    itemList.add(Item("assets/ERP.png", 5, "ERP"));
    itemList.add(Item("assets/BigData.png", 6, "Big Data"));
    itemList.add(Item("assets/Marketing.png", 7, "Marketing"));
    itemList.add(Item("assets/Advertising.png", 8, "Advertising"));
    itemList.add(Item("assets/CRM.png", 9, "CRM"));
    itemList.add(Item("assets/Drones.png", 10, "Drones"));
    itemList.add(
        Item("assets/DigitalTransformation.png", 11, "Digital Transformation"));
    itemList.add(Item("assets/Cloud.png", 12, "Cloud"));
    itemList.add(Item("assets/DataCenter.png", 13, "Data Centre"));
    itemList.add(Item("assets/DataScience.png", 14, "Data Science"));
    itemList.add(Item("assets/RPA.png", 15, "RPA"));
    itemList.add(Item("assets/DevOps.png", 16, "DevOps"));
    itemList
        .add(Item("assets/ChipsProcessors.png", 17, "Chips And Processors"));
    itemList.add(Item("assets/Gaming.png", 18, "Gaming"));
    itemList.add(Item("assets/Microservices.png", 19, "Microservices"));
    itemList.add(Item("assets/OpenSource.png", 20, "Open Source"));
    itemList.add(Item("assets/Mobility.png", 21, "Mobility"));
    itemList.add(Item("assets/Networking.png", 22, "Networking"));
    itemList.add(Item("assets/Database.png", 23, "Database"));
    itemList.add(Item("assets/IOT.png", 24, "IoT"));
    itemList.add(Item("assets/Printers.png", 25, "Printers"));
    itemList.add(Item("assets/Robotics.png", 26, "Robotics"));
    itemList.add(Item("assets/MachineLearning.png", 27, "Machine Learning"));
    itemList.add(Item("assets/Software.png", 28, "Software"));
    itemList.add(Item("assets/Hardware.png", 29, "Hardware"));
    itemList.add(Item("assets/Security.png", 30, "Security"));
    itemList.add(Item("assets/ARVR.png", 31, "AR/VR"));
    itemList.add(Item("assets/Mobile.png", 32, "Mobile"));
    itemList.add(Item("assets/Servers.png", 33, "Servers"));
    itemList.add(Item("assets/Semiconductor.png", 34, "Semiconductors"));
    itemList.add(Item("assets/Financial.png", 35, "Financial Services"));
    itemList.add(Item("assets/Transportation.png", 36, "Transportation"));
    itemList.add(Item("assets/Aviation.png", 37, "Aviation"));
    itemList.add(Item("assets/Healthcare.png", 38, "Health Care"));
    itemList.add(Item("assets/Telecom.png", 39, "Telecom"));
    itemList.add(Item("assets/Consumer.png", 40, "Consumer Electronics"));
    itemList.add(Item("assets/Biotechnology.png", 41, "Biotechnology"));
    itemList.add(Item("assets/Retail.png", 42, "Retail"));
    itemList.add(Item("assets/Space.png", 43, "Space"));
    itemList.add(Item("assets/Science.png", 44, "Science"));
    itemList.add(Item("assets/Blockchain.png", 45, "Blockchain"));
    itemList.add(Item("assets/Energy.png", 46, "Energy"));
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
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(
                left: screen.size.height / 40, top: 0, bottom: 15, right: 0),
            child: Container(
              child: Center(
                child: Text("Choose atleast five topics you are intrested in",
                    style: TextStyle(
                        fontSize: screen.size.height / 40,
                        color: Colors.white)),
              ),
            ),
          ),
          new Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: GridView.builder(
                  itemCount: itemList.length,
                  primary: false,
                  padding: const EdgeInsets.only(
                      bottom: 0, left: 20, right: 20, top: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
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

          Container(
            color: Colors.white,
            height: screen.size.height / 14,
            width: screen.size.width / 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, top: 0, bottom: 0),
              child: Custombutton(
                  name: "Continue",
                  bgColor: Color.fromRGBO(255, 203, 196, 1),
                  textColor: Color.fromRGBO(58, 68, 161, 1)),
            ),
          ),
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
