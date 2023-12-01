import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 15,
                children: <Widget>[
                  roundborderWidget,
                  StarWidget
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

Widget get roundborderWidget{
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: Radius.circular(12),
    padding: EdgeInsets.all(3),
    strokeWidth: 3,
    color: Colors.green,
    dashPattern: [5,7],
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Container(
        height: 250,
        width: 125,
        color: Colors.deepPurple,
      ),
    ),
  );
}

Widget get StarWidget{
  Path customPath = Path()
    ..moveTo(70, 50)
    ..lineTo(50, 100)
    ..lineTo(15, 100)
    ..lineTo(45, 140)
    ..lineTo(30, 190)
    ..lineTo(70, 150)
    ..lineTo(110,190)
    ..lineTo(95,140)
    ..lineTo(125, 100)
    ..lineTo(90, 100)
    ..lineTo(70,50);

  return DottedBorder(
    customPath: (_) => customPath,
    color: Colors.indigo,
    dashPattern: [6,3],
    strokeWidth: 2,
    child: Container(
      height: 250,
      width: 140,
      color: Colors.blue.withAlpha(20),
    ),
  );
}
