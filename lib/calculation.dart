class Calculation {
  Calculation({
    this.height,
    this.weight,
  });
  // ignore: prefer_typing_uninitialized_variables
  var height;
  // ignore: prefer_typing_uninitialized_variables
  var weight;
  // ignore: prefer_typing_uninitialized_variables
  double bmi = 0;

  String calculateBmi() {
    bmi = weight / ((height / 100) * 2);
    return bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have higher than normal body weight, try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight, Good job!';
    } else {
      return 'You have lower than normal body weight, you can eat a bit more.';
    }
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
