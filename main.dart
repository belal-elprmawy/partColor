import 'package:flutter/material.dart';

main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double number = 83355.00;
    String stringNumber = number.toStringAsFixed(2);
    String intPart = number.toInt().toString();
    String floatPart = stringNumber.split('.')[1];

    print(intPart+"."+floatPart);
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("\$"+intPart ,style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,color: Colors.black ,letterSpacing: 0.5) ,),
              Text("."+floatPart , style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold, color: Colors.grey) ,),
              Text(" KWD",style: TextStyle(fontSize: 15, color: Colors.grey) ,)
            ],
          ),
        ),
      ),
    );
  }
}
