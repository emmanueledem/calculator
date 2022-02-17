import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:calculator/services/calculateBrain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  CalculatorBrain calc = CalculatorBrain();

  void show(BuildContext ctx) {
    showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.amber,
      context: ctx,
      builder: (ctx) => Container(
        width: 300,
        height: 500,
        color: Colors.white54,
        alignment: Alignment.center,
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Button('log', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
                Button('tan', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
                Button('sin', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
                Button('cos', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Button('(', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
                Button(')', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
                Button('^', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
                Button('√', buttonPadding1, buttonbackgroundColor1,
                    buttonWeight, buttontextColor2),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container Button(
      buttonText, buttonPadding, containerColor, buttonweight, textColor) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: MaterialButton(
        onPressed: () {
          setState(() {
            calc.calculator(buttonText);
          });
        },
        child: Padding(
          padding: buttonPadding,
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor, fontWeight: buttonweight, fontSize: 30.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xffe6e6fa),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  decoration: blackcontainerStyle,
                  height: 365,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text(
                            calc.expression,
                            style: const TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 35.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text(
                            calc.result,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 40.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Button('0', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('.', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('+', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor1),
                    Button('/', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor1),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Button('7', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('8', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('9', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('x', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor1),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Button('4', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('5', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('6', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('-', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor1),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Button('1', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('2', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('3', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('Del', buttonPadding1, buttonbackgroundColor1,
                        buttonWeight, buttontextColor1),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Button('C', buttonPadding2, buttonbackgroundColor1,
                        buttonWeight, buttontextColor2),
                    Button('=', buttonPadding2, buttontextColor2, buttonWeight,
                        buttontextColor3),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(color: Colors.amber),
                //   height: 35,
                //   child: IconButton(
                //     onPressed: () {
                //       _show(context);
                //     },
                //     icon: Icon(
                //       Icons.more_horiz,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
