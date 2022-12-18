import 'package:flutter/material.dart';
import 'package:task_6/info.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Flower Shop",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 30.0),
                child: Text(
                  "WELCOME \nTO THE\nFLOWERS SHOP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Next",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.arrow_circle_right_rounded),color: Colors.teal,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Info()));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
