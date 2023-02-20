import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/initials.png',
                  width: 360,
                ),
                const Padding(padding: EdgeInsets.all(20.0)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'ANASTASIA',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' and ',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      'DIMITRIS',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'JULY 8, 2023',
                  style: TextStyle(fontSize: 22.0),
                ),
                const Text(
                  'KOMOTINI, GREECE',
                  style: TextStyle(fontSize: 22.0),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    side: MaterialStatePropertyAll<BorderSide>(BorderSide.none),
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      'RSVP',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Transform.translate(
              offset: const Offset(-50.0, -125.0),
              child: const Text(
                'A',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0,
                ),
              ),
            ),
          ),
          Center(
            child: Transform.translate(
              offset: const Offset(55.0, -60.0),
              child: const Text(
                'D',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
