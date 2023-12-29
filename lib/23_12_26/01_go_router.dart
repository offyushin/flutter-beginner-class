import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Router 첫 화면'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('data'),
        ),
      ),
    );
  }
}

class EndScreen extends StatelessWidget {
  final Person person;

  const EndScreen({
    super.key, required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}
