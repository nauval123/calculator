import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String screenText = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  screenText,
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: <Widget>[
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                onTap: () {
                  setState(() {
                    screenText = '0';
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: () {
                  // todo
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                onTap: () {
                  if (screenText.contains("+") || screenText.contains("-") || screenText.contains("x") || screenText.contains("/") || screenText.contains("%")){
                    setState(() {
                         ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                         content: new Text("hanya satu operasi"),
                          duration: Duration(seconds: 2),)
                          );
                      });
                  }
                  else{
                    pressNumber("%");
                  }
                },
              ),
              CalculatorButton.Icon(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                onTap: () {
                  setState(() {
                    if (screenText == '0' ||
                        screenText == '' ||
                        screenText.length == 1) {
                      screenText = '0';
                    } else {
                      screenText =
                          screenText.substring(0, screenText.length - 1);
                    }
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: () {
                  pressNumber(7);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: () {
                  pressNumber(8);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: () {
                  pressNumber(9);
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                onTap: () {
                  if (screenText.contains("+") || screenText.contains("-") || screenText.contains("x") || screenText.contains("/") || screenText.contains("%")){
                    setState(() {
                          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text("hanya satu operasi"),
                          duration: Duration(seconds: 2),));

                      });
                  }
                  else{
                    pressNumber('/');
                  }
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: () {
                  pressNumber(4);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: () {
                  pressNumber(5);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: () {
                  pressNumber(6);
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'x',
                onTap: () {
                  if (screenText.contains("+") || screenText.contains("-") || screenText.contains("x") || screenText.contains("/") || screenText.contains("%")){
                    setState(() {
                          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text("hanya satu operasi"),
                          duration: Duration(seconds: 2),));

                      });
                  }
                  else{
                    pressNumber("x");
                  }
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: () {
                  pressNumber(1);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: () {
                  pressNumber(2);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: () {
                  pressNumber(3);
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                onTap: () {
                   if (screenText.contains("+") || screenText.contains("-") || screenText.contains("x") || screenText.contains("/") || screenText.contains("%")){
                    setState(() {
                          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text("hanya satu operasi"),
                          duration: Duration(seconds: 2),));

                      });
                  }
                  else{
                    pressNumber("-");
                  }
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: () {
                  pressNumber(0);
                },
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: () {
                  setState(() {
                    if (!screenText.contains('.')) {
                      screenText = '$screenText.';
                    }
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: () {
                  operationNumber(screenText);
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '+',
                onTap: () {
                  if (screenText.contains("+") || screenText.contains("-") || screenText.contains("x") || screenText.contains("/") || screenText.contains("%")){
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text("hanya satu operasi"),
                          duration: Duration(seconds: 2),
                      ));
                      // SnackBar(
                      //   content: Text("Hanya satu operasi"),
                      //   // duration: Duration(seconds: 2),
                      // );
                      });
                  }
                  else{
                    pressNumber("+");
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void pressNumber(var number) {
    setState(() {
      if (screenText == '0') {
        screenText = '$number';
      } else {
        screenText = '$screenText$number';
      }
    });
  }

  void operationNumber(String number){
    double firstnumber=0;
    double secondnumber=0;
    double result=0;
    String numberonScreen=number;
    // setState(() {
    //       screenText = "";
    //     });
    
    // List parts = [number.substring(0,idx).trim(),number[idx], number.substring(idx+1).trim()];
    if (number.contains("+")) {
      int idx = number.indexOf("+");
      firstnumber = double.parse(number.substring(0,idx).trim());
      secondnumber= double.parse(number.substring(idx+1).trim());
      result = firstnumber + secondnumber;
      setState(() {
          screenText = result.toString();
            });
    }else if(number.contains("-")){
      int idx = number.indexOf("-");
      firstnumber = double.parse(number.substring(0,idx).trim());
      secondnumber= double.parse(number.substring(idx+1).trim());
      result = firstnumber - secondnumber;
      setState(() {
        screenText= result.toString();
            });
    }else if(number.contains("x")){
      int idx = number.indexOf("x");
      firstnumber = double.parse(number.substring(0,idx).trim());
      secondnumber= double.parse(number.substring(idx+1).trim());
      result = firstnumber * secondnumber;
      setState(() {
                screenText = result.toString();
            });
    }else if(number.contains("/")){
      int idx = number.indexOf("/");
      firstnumber = double.parse(number.substring(0,idx).trim());
      secondnumber= double.parse(number.substring(idx+1).trim());
      result = firstnumber / secondnumber;
      setState(() {
                screenText = result.toString();
            });
    }else if(number.contains("%")){
      int idx = number.indexOf("%");
      firstnumber = double.parse(number.substring(0,idx).trim());
      secondnumber= double.parse(number.substring(idx+1).trim());
      result = firstnumber % secondnumber;
      setState(() {
                screenText = result.toString();
            });
    }
  }


}

  


// ignore: must_be_immutable
class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  IconData? icon;
  final String text;
  final void Function() onTap;

  CalculatorButton({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap,
  });

  CalculatorButton.Icon({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: foregroundColor),
                )
              : Icon(
                  icon,
                  color: foregroundColor,
                ),
        ),
      ),
    );
  }
}
