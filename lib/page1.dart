import 'package:bmi_calculator/page2.dart';
import 'package:flutter/material.dart';
import 'page1row1.dart';
import 'page1row2.dart';
import 'page1row3.dart';
import 'bottom_button.dart';
import 'calculation.dart';

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
          title: const Text(
            'BMI Calculator',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          verticalDirection: VerticalDirection.down,
          children: [
            const Page1Row1(),
            const Page1Row2(),
            const Page1Row3(),
            BottomButton(
              onTap: () {
                Calculation calc = Calculation(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Page2(
                              resultText: calc.calculateBmi(),
                              interpretationText: calc.getInterpretation(),
                              bmiResult: calc.getResult(),
                            )));
              },
              function: 'Calculate',
            )
          ],
        ));
  }
}
