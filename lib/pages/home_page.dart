import 'package:flutter/material.dart';
import 'package:wedding_site/widgets/appbar_widget.dart';

import '../widgets/center_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: Stack(
        children: [
          const SizedBox(width: double.infinity, child: CenterWidget()),
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
