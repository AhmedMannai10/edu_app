import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Educational APP',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFedb1ed),
      ),
      
      home: Scaffold(
            body: Center(
              child:SizedBox(
                  height: Edge.instanceof(200),
                  child: const Text("Hello There",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                      ),
                ),
                    
              ),
          ),
      ),
      );
  }
}

