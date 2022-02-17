class CalculatorBrain {
  String expression = '0';
  String result = '0';
  dynamic num1 = 0;
  dynamic num2 = 0;
  String operator = '';

  void calculator(buttonText) {
    if (buttonText == 'C') {
      expression = '0';
      result = '0';
      operator = '';
      num1;
      num2;
    } else if (buttonText == 'Del') {
      if (expression == '') {
        expression = '0';
        if (expression == '0' && result != '0') {
          result = '0';
        }
      } else {
        expression = expression.substring(0, expression.length - 1);
      }
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '/' ||
        buttonText == 'x') {
      if (result == "0") {
        num1 = int.parse(expression);
      } else {
        num1 = int.parse(result);
      }
      expression = '0';
      operator = buttonText;
    } else if (buttonText == '=') {
      if (operator != '') {
        num2 = int.parse(expression);
        if (operator == '+') {
          result = (num1 + num2).toString();
          expression = '$num1 + $num2'.toString();
          operator = '';
        }
        if (operator == 'x') {
          result = (num1 * num2).toString();
          expression = '$num1 X $num2'.toString();
          operator = '';
        }
        if (operator == '*') {
          result = (num1 * num2).toString();
          expression = '$num1 * $num2'.toString();
          operator = '';
        }
        if (operator == '/') {
          result = (num1 / num2).toString();
          expression = '$num1 / $num2'.toString();
          operator = '';
        }
        if (operator == '-') {
          result = (num1 - num2).toString();
          expression = '$num1 - $num2'.toString();
          operator = '';
        }
      }
    } else {
      if (expression != '0' && result != '0') {
        result = '0';
        expression = buttonText;
      } else if (expression == '0') {
        expression = buttonText;
      } else {
        expression = expression + buttonText;
      }
    }
  }
}
