import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var expression = ''.obs;
  var result = '0'.obs;

  void addInput(String value) {
    expression.value += value;
  }

  void clear() {
    expression.value = '';
    result.value = '0';
  }

  void delete() {
    if (expression.value.isNotEmpty) {
      expression.value = expression.value.substring(0, expression.value.length - 1);
    }
  }

  void calculate() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(expression.value.replaceAll('x', '*'));
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result.value = eval.toString();
    } catch (e) {
      result.value = "Error";
    }
  }
}
