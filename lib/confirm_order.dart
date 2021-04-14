import 'package:flutter/material.dart';

class ConfirmOrder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConfirmOrderState();
  }
}

class ConfirmOrderState extends State<ConfirmOrder> {
  var listItems = [
    'Kadhai Paneer',
    'Kebab',
    'Biryani',
    'Long Name Dish abcdef',
    'Butter Chicken'
  ];

  var listItemsCount = [1, 2, 1, 2, 1];

  Color myColor1 = Color(0xff272727);
  Color myColor2 = Color(0xff0d2b37);

  TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19.0,
    color: Colors.white,
  );
  double h;
  TextStyle textStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    h=MediaQuery.of(context).size.height;
    return Scaffold(
          backgroundColor: Color(0xff151515), //0xff171616
          body: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment(0.7, 0.50),
                  child: Image.asset(
                    'assets/images/meal3.png',
                    width: 220,
                    height: 220,
                  )),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        // width: 100.0,
                        height: 50.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Confirm Order",
                          textScaleFactor: 1.4,
                          style: textStyle,
                        ),
                      ),
                      Text(
                        "Big sa Text (Some Quote)",
                        style: TextStyle(color: Colors.white),
                        textScaleFactor: 1.2,
                      ),
                      SizedBox(
                        height: 80.0,
                      ),
                      Container(
                        color: Color(0xff151515),
                        child: getListView(),
                        height: h> 700.0 ? (listItems.length <= 4
                            ? listItems.length * 70.0
                            : 280.0):210.0,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              debugPrint("Go to Request!Height:");
                            },
                            child: Container(
                              width: 120.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: myColor1,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Text(
                                'Requests',
                                style: textStyle1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              debugPrint("Go to Menu!");
                            },
                            child: Container(
                              width: 120.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: myColor1,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Text(
                                'Menu',
                                style: textStyle1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  debugPrint("Pay and order!");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      color: myColor2,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Text(
                                    'Pay and Order',
                                    style: textStyle1,
                                    textAlign: TextAlign.center,
                                    // textScaleFactor: 1.5,
                                  ),
                                ),
                              )),
                              SizedBox(
                                width: 15.0,
                              ),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  debugPrint("Pay in Cash!");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      color: myColor2,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Text(
                                    'Pay in Cash',
                                    style: textStyle1,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ))
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }

  Widget getListView() {
    var listView = ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return Card(
              color: myColor1,
              child: ListTile(
                  title: Text(
                    listItems[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle, //TextStyle(color: Colors.white)
                  ),
                  trailing:
                      Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    listItemsCount[index] != 0
                        ? CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              color: Colors.yellow,
                              onPressed: () =>
                                  setState(() => listItemsCount[index]--),
                            ),
                          )
                        : Container(
                            width: 5.0,
                          ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          listItemsCount[index].toString(),
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.yellow,
                          onPressed: () =>
                              setState(() => listItemsCount[index]++),
                        )),
                  ])));
        });
    return listView;
  }
}