import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, this.onTap, this.function}) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  // ignore: prefer_typing_uninitialized_variables
  final function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black26),
          child: Text(
            function,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey),
          ),
        ));
  }
}
