import 'dart:ui';

import 'package:flutter/material.dart';

class TesteScreen extends StatefulWidget {
  const TesteScreen({super.key});

  @override
  State<TesteScreen> createState() => _TesteScreenState();
}

class _TesteScreenState extends State<TesteScreen> {
  String _value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PrimeiraAula'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _value,
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () => changeText(),
              child: const Text('ACTION'),
            ),
          ],
        ),
      ),
    );
  }

  changeText() {
    setState(() {
      _value = _value.isEmpty ? _value = 'HELO' : DateTime.now().toString();
    });
  }
}
