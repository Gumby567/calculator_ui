import 'package:flutter/material.dart';

void main() {runApp(const MaterialApp(
  home: MyCalculator(),
  debugShowCheckedModeBanner: false,
));
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 50), // Added some top spacing

          // Row 2: Numbers 7, 8, 9
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('7', Colors.white12),
              calcButton('8', Colors.white12),
              calcButton('9', Colors.white12),
              calcButton('x', Colors.orange),
            ],
          ),
          const SizedBox(height: 10),

          // Row 3: Numbers 4, 5, 6
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('4', Colors.white12),
              calcButton('5', Colors.white12),
              calcButton('6', Colors.white12),
              calcButton('-', Colors.orange),
            ],
          ),
          const SizedBox(height: 10),

          // Row 4: Numbers 1, 2, 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('1', Colors.white12),
              calcButton('2', Colors.white12),
              calcButton('3', Colors.white12),
              calcButton('+', Colors.orange),
            ],
          ),
          const SizedBox(height: 10),

          // Row 5: Bottom Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('0', Colors.white12),
              calcButton('.', Colors.white12),
              calcButton('=', Colors.orange),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // A simple "Beginner" function to make a circle button
  Widget calcButton(String text, Color color) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}