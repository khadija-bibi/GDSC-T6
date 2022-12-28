import 'package:flutter/material.dart';
import 'package:task_6/variety.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("asset/background.jpg"),
            fit: BoxFit.cover,),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your address",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 20,
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
                  icon: Icon(Icons.arrow_circle_right_rounded),
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Variety()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
