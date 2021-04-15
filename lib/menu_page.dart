import 'package:flutter/material.dart';
import 'package:food_ordering_app/utils/constants.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Map<String, List<Map<String, dynamic>>>> menu = [
    {
      "Recommended": [
        {
          "name": "Kadhai Paneer",
          "isVeg": true,
          "price": 300,
        },
        {
          "name": "Dum Aloo",
          "isVeg": true,
          "price": 250,
        },
        {
          "name": "Mutton  Biryani",
          "isVeg": false,
          "price": 450,
        },
        {
          "name": "Kadhai Paneer",
          "isVeg": true,
          "price": 300,
        },
        {
          "name": "Dum Aloo",
          "isVeg": true,
          "price": 250,
        },
        {
          "name": "Mutton  Biryani",
          "isVeg": false,
          "price": 450,
        },
        {
          "name": "Kadhai Paneer",
          "isVeg": true,
          "price": 300,
        },
        {
          "name": "Dum Aloo",
          "isVeg": true,
          "price": 250,
        },
        {
          "name": "Mutton  Biryani",
          "isVeg": false,
          "price": 450,
        }
      ]
    },
    {
      "Starters": [
        {
          "name": "Kadhai Paneer",
          "isVeg": true,
          "price": 300,
        },
        {
          "name": "Dum Aloo",
          "isVeg": true,
          "price": 250,
        },
        {
          "name": "Mutton  Biryani",
          "isVeg": false,
          "price": 450,
        }
      ]
    },
    {"Mains": []},
    {"Deserts": []},
    {"Beverages": []},
    {"Appetizer": []},
  ];
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: screenHeight * 0.37,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/restaurant.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.colorBurn),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: screenWidth,
                      color: kBlack2,
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.arrow_back,
                            color: kYellow1,
                          ),
                        ),
                        Stack(
                          children: [
                            ClipOval(
                              child: Material(
                                color: Colors.white,
                                child: InkWell(
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Icon(
                                      Icons.restaurant,
                                    ),
                                  ),
                                  onTap: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              right: -1,
                              top: -1,
                              child: ClipOval(
                                child: Material(
                                  color: kYellow1,
                                  child: SizedBox(
                                      width: 15,
                                      height: 15,
                                      child: Center(
                                        child: Text("3", textScaleFactor: 0.9),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Restaurant Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 21),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.info_outline,
                            color: kYellow1,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Food type, Food type, Food type,...",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: screenHeight * 0.15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Menu",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 21),
                          ),
                        ),
                        // Icon(Icons.)
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Veg & Non-Veg",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Container(
                      height: screenHeight * 0.5,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListView.builder(
                        itemCount: menu.length,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        itemBuilder: (context, index) {
                          List items = menu[index].values.first;
                          return SizedBox(
                            height: index == selected
                                ? screenHeight * 0.4
                                : screenHeight * 0.09, //0.4
                            child: OverflowBox(
                              maxHeight: index == selected
                                  ? screenHeight * 0.5
                                  : screenHeight * 0.2, //0.5
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kBlack2.withOpacity(0.3),
                                        blurRadius: 9.0,
                                        offset: Offset(0, -9)),
                                  ],
                                ),
                                child: ExpansionTile(
                                  tilePadding: EdgeInsets.only(
                                      left: 10,
                                      right: 20,
                                      bottom: screenHeight * 0.01),
                                  childrenPadding: EdgeInsets.only(
                                      left: 0,
                                      right: 0,
                                      bottom: screenHeight * 0.00),
                                  title: Text(
                                    menu[index].keys.first,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "10 items",
                                    textScaleFactor: 0.9,
                                  ),
                                  children: [
                                    Container(
                                      height: index == selected
                                          ? screenHeight * 0.35
                                          : 0,
                                      child: SingleChildScrollView(
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ...items.map((e) => Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10,
                                                        horizontal: 15.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          e['name'],
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                        ClipOval(
                                                          child: Material(
                                                            color: Colors.black,
                                                            child: InkWell(
                                                              child: SizedBox(
                                                                  width: 30,
                                                                  height: 30,
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    color:
                                                                        kYellow1,
                                                                  )),
                                                              onTap: () {},
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  key: Key(index.toString()),
                                  initiallyExpanded: index == selected,
                                  onExpansionChanged: ((newState) {
                                    if (newState)
                                      setState(() {
                                        // Duration(seconds: 20000);
                                        selected = index;
                                      });
                                    else
                                      setState(() {
                                        selected = -1;
                                      });

                                    print('----->$selected');
                                  }),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showMenuDialog(context);
        },
        backgroundColor: kYellow1,
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: 18,
        ),
        label: Text(
          "Menu",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }

  void _showMenuDialog(BuildContext context) {
    Dialog dialog = Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.only(bottom: 50, right: 15),
      child: Container(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kYellow1,
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.expand_more,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 10),
                    itemCount: menu.length,
                    itemBuilder: (context, index) => Text(
                      menu[index].keys.first,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    separatorBuilder: (context, index) => Container(
                      color: Colors.grey.withOpacity(0.3),
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.6,
                      margin: EdgeInsets.only(top: 10, bottom: 25),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    showDialog(context: context, builder: (BuildContext context) => dialog);
  }
}
