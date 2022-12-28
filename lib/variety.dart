import 'package:flutter/material.dart';
import 'package:task_6/order.dart';

class Variety extends StatelessWidget {
  const Variety({Key? key}) : super(key: key);

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
            Column(
              children: [
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(23.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/red_rose.png"),
                    ),
                    subtitle: Row(
                      children: [
                        Text("Red Roses",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        TextButton(
                          onPressed: () {},
                          child: IconButton(
                            icon: Icon(
                              Icons.check_circle,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Order()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(23.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/white_rose.png"),
                    ),
                    subtitle: Row(
                      children: [
                        Text("White Roses",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        TextButton(
                          onPressed: () {},
                          child: IconButton(
                            icon: Icon(
                              Icons.check_circle,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Order()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(23.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/tulip.png"),
                    ),
                    subtitle: Row(
                      children: [
                        Text("Tulip",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        TextButton(
                          onPressed: () {},
                          child: IconButton(
                            icon: Icon(
                              Icons.check_circle,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Order()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30,
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

                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
