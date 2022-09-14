import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

Gender? selectedGender;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI calculator'),
          centerTitle: true,
        ),
        body: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Page1Row1(
                    gender: 'Male',
                    icon: FontAwesomeIcons.mars,
                    color: selectedGender == Gender.male
                        ? Colors.green
                        : Colors.red,
                  ),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
                GestureDetector(
                  onTap: (() {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  }),
                  child: Page1Row1(
                      gender: 'Female',
                      icon: FontAwesomeIcons.venus,
                      color: selectedGender == Gender.female
                          ? Colors.green
                          : Colors.red),
                )
              ],
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class Page1Row1 extends StatefulWidget {
  Page1Row1({Key? key, this.icon, this.gender, this.color}) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final icon;
  // ignore: prefer_typing_uninitialized_variables
  final gender;
  // ignore: prefer_typing_uninitialized_variables
  Color? color;

  @override
  State<Page1Row1> createState() => _Page1Row1State();
}

class _Page1Row1State extends State<Page1Row1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: widget.color),
      height: 200,
      width: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 80,
          ),
          const SizedBox(height: 10),
          Text(
            widget.gender,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
