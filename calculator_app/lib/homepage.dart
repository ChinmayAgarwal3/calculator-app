import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num1 = 0, num2 = 0, answer = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2= new TextEditingController();

  void addition() {
    setState(() {
      num1=int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = num1 + num2;
    });
  }
   void substraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = num1 - num2;
    });
  }
   void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = num1 * num2;
    });
  }
   void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      double answer = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text(
            'Output',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red[800]),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text('$answer',
              style: TextStyle(
                fontSize: 20,
              )),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter Number"),
                    controller: t1,
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter Number"),
                    controller: t2,
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                          onPressed: addition,
                          icon: Icon(Icons.add),
                          label: Text('')),
                      ElevatedButton.icon(
                          onPressed: substraction,
                          icon: Icon(Icons.remove),
                          label: Text('')),
                      ElevatedButton.icon(
                          onPressed: multiplication,
                          icon: Icon(Icons.stop),
                          label: Text('')),
                      ElevatedButton.icon(
                          onPressed: division,
                          icon: Icon(Icons.dashboard),
                          label: Text('')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
