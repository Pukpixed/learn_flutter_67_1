import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 33, 70),
            ),
            onPressed: () {
              print("Button Pressed");
            },
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 33, 70),
              side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255), width: 2),
            ),
            onPressed: () {
              print("Outlined Button Pressed");
            },
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 69, 205),
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("Elevated Button Pressed");
            },
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  } // ← ปิด method build
} // ← ปิด class Home
