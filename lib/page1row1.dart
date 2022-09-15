import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

Gender? selectedGender;

class Page1Row1 extends StatefulWidget {
  const Page1Row1({Key? key}) : super(key: key);

  @override
  State<Page1Row1> createState() => _Page1Row1State();
}

class _Page1Row1State extends State<Page1Row1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: Page1Row1Sub(
            gender: 'Male',
            icon: FontAwesomeIcons.mars,
            color:
                selectedGender == Gender.male ? Colors.black45 : Colors.black26,
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
          child: Page1Row1Sub(
              gender: 'Female',
              icon: FontAwesomeIcons.venus,
              color: selectedGender == Gender.female
                  ? Colors.black45
                  : Colors.black26),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Page1Row1Sub extends StatefulWidget {
  Page1Row1Sub({Key? key, this.icon, this.gender, this.color})
      : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final icon;
  // ignore: prefer_typing_uninitialized_variables
  final gender;
  // ignore: prefer_typing_uninitialized_variables
  Color? color;

  @override
  State<Page1Row1Sub> createState() => _Page1Row1SubState();
}

class _Page1Row1SubState extends State<Page1Row1Sub> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: widget.color),
      height: 170,
      width: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 80,
            color: Colors.blueGrey,
          ),
          const SizedBox(height: 10),
          Text(
            widget.gender,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
