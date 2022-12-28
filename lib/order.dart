import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage("asset/background.jpg"),
                fit: BoxFit.cover,)

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("One flower",
                                    style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Small sized bouquet",
                                    style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 3,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Large sized bouquet",
                                    style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: showToast,
                  child: Text("Done"),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple)),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_circle_left_rounded),
                        color: Colors.deepPurple,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "Back",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          IconButton(
                            icon: Icon(Icons.home),
                            color: Colors.deepPurple,
                            onPressed: () {
                              Navigator.popUntil(
                                  context, ModalRoute.withName('/'));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "Order Placed",
    );
  }
}
