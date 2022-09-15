import 'package:flutter/material.dart';

int height = 170;

class Page1Row2 extends StatefulWidget {
  const Page1Row2({Key? key}) : super(key: key);

  @override
  State<Page1Row2> createState() => _Page1Row2State();
}

class _Page1Row2State extends State<Page1Row2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Height',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: const TextStyle(
                            fontSize: 65, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'CM',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.green,
                      inactiveColor: Colors.black,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              )),
        )
      ],
    );
  }
}
