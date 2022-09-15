import 'package:flutter/material.dart';
import 'bottom_button.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI Calculator',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))),
      body: Column(children: [
        Expanded(
            child: Container(
          height: 30,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black26),
          child: const Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ),
        )),
        Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Fat',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Fat',
                    style: TextStyle(fontSize: 80, color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'your bmi is this and you should do this',
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                  ),
                ],
              ),
            )),
        BottomButton(
          onTap: () {
            Navigator.pop(context);
          },
          function: 're-Calculate',
        )
      ]),
    );
  }
}
