import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Text(
              ' and ',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              'DIMITRIS',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
    );
  }
}
