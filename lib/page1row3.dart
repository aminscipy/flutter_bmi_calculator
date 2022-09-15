import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int weight = 65;
int age = 25;

class Page1Row3 extends StatefulWidget {
  const Page1Row3({Key? key}) : super(key: key);

  @override
  State<Page1Row3> createState() => _Page1Row3State();
}

class _Page1Row3State extends State<Page1Row3> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          height: 170,
          width: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Weight',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(weight.toString(),
                      style: const TextStyle(
                          fontSize: 60, fontWeight: FontWeight.w500)),
                  const Text(
                    'Kg',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          shape: const CircleBorder()),
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      child: const Icon(FontAwesomeIcons.plus)),
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          shape: const CircleBorder()),
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                      child: const Icon(FontAwesomeIcons.minus))
                ],
              )
            ],
          )),
      Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          height: 170,
          width: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Age',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(age.toString(),
                      style: const TextStyle(
                          fontSize: 60, fontWeight: FontWeight.w500)),
                  const Text(
                    'Years',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          shape: const CircleBorder()),
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      child: const Icon(FontAwesomeIcons.plus)),
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          shape: const CircleBorder()),
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                      child: const Icon(FontAwesomeIcons.minus))
                ],
              )
            ],
          ))
    ]);
  }
}
