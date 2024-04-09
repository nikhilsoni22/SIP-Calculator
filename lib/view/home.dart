import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sip_calculator/model/input_button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:number_to_words_english/number_to_words_english.dart';
import 'package:intl/intl.dart';

class home extends StatefulWidget {
  homeState createState() => homeState();
}

class homeState extends State<home> {
  var ControllerOne = TextEditingController();
  var ControllerTwo = TextEditingController();
  var ControllerThree = TextEditingController();

  var totalAmount;
  var totalAmount1 = null;
  var year;
  var month = 0;
  var sum;
  var sum1;
  var totalReturn;

  var j;
  var totalvalue;
  var totallll;
  var profit;

  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;


    NumberFormat numberFormate = NumberFormat.decimalPattern('hi');

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: width * 0.025, vertical: height * 0.002),
              height: height * 0.45,
              width: width * 0.98,
              decoration: BoxDecoration(color: Colors.white70, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 3,
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03, vertical: height * 0.01),
                    child: Text(
                      'Estimated Growth',
                      style: TextStyle(
                          fontSize: width * 0.046, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    /*...........................................ESTIMATED GROWTH..................................................*/
                    child: Text(
                      "${totallll?.toStringAsFixed(0) ?? "0"}",
                      style: TextStyle(
                          fontSize: width * 0.068, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.001,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03, vertical: height * 0.01),
                    child: Text(
                      "Amount Invested(Total)",
                      style: TextStyle(
                          fontSize: width * 0.045, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    /*....................................TOTAL AMOUNT......................................*/
                    child: Text(
                      "${numberFormate.format(totalAmount1)}",
                      style: TextStyle(
                          fontSize: width * 0.068, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child:
                        Text("${NumberToWordsEnglish.convert(totalAmount1)}"),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: height * 0.01),
                    height: height * 0.18,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 7,
                              blurRadius: 10)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: Text(
                                "Invested",
                                style: TextStyle(
                                    fontSize: width * 0.046,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.07),
                              child:
                                  Text("${numberFormate.format(totalAmount1)}"),
                            ),
                          ],
                        ),
                        Icon(Icons.add),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: Text(
                                "profit",
                                style: TextStyle(
                                    fontSize: width * 0.046,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text("${profit?.toStringAsFixed(0) ?? "0"}")
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: Text(
                            "=",
                            style: TextStyle(
                                fontSize: width * 0.046,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: width * 0.046,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text("${totallll?.toStringAsFixed(0) ?? 0}"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: TextInputField(
                  myNumber: TextInputType.number,
                  Controller: ControllerOne,
                  myIcon: Icons.account_box,
                  myLabelText: "Monthly SIP Amount"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text("One Hundred"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: TextInputField(
                  myNumber: TextInputType.number,
                  Controller: ControllerTwo,
                  myIcon: Icons.percent,
                  myLabelText: "Expected Gain % (for 1 Year)"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.14),
              alignment: Alignment.centerLeft,
              child: Text(
                "SIP Tenure",
                style: TextStyle(
                    fontSize: width * 0.046, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: TextInputField(
                    myEnable: false,
                    myNumber: TextInputType.number,
                    Controller: ControllerThree,
                    myIcon: Iconsax.calendar,
                    myLabelText: "Years   (Coming Soon)")),
            SizedBox(
              height: height * 0.01,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    totalAmount = int.parse(ControllerOne.text);
                    totalAmount1 = totalAmount * month;
                    print(totalAmount1);
                  });

                  setState(() {
                    sum = int.parse(ControllerTwo.text);
                    sum1 = sum / month;
                    var returnn = sum1 / 100;
                    print(returnn);
                    totalReturn = 0;
                    totalReturn = totalReturn;
                    totalvalue = 0;
                    totallll = 0;
                    j = 0;
                    do {
                      totalReturn =
                          totalReturn + totalAmount + totalAmount * returnn;
                      j++;
                      print(totalReturn);
                    } while (j < 1);
                    for (int i = 1; i <= month; i++) {
                      totalReturn = totallll + totalAmount;
                      totalvalue = totalReturn * returnn;
                      totallll = totalReturn + totalvalue;
                      print(totallll.toStringAsFixed(0));
                    }
                  });
                  profit = 0;
                  profit = totallll - totalAmount1;
                  print(profit.toStringAsFixed(0));
                  setState(() {
                    month = 12;
                  });
                },
                child: Text("Calculate")),
            Text(
              "please tap 2 times",
              style: TextStyle(fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    ));
  }
}
