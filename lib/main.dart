import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, //with material 3
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('OUTLINE BUTTON'),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              elevation: 20,
              shadowColor: Colors
                  .black, // shadow color berguna untuk memberikan efek warna pada widget elevation
              backgroundColor: Colors.amber,
              foregroundColor:
                  Colors.purple, //untuk merubah warna splash dan warna text
              side: const BorderSide(
                style: BorderStyle.none,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text('Outline button')),
      ),
    );
  }
}
