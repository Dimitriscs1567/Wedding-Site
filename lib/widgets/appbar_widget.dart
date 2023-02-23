import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  final _hovers = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  final _links = [
    'Home',
    'Schedule',
    'Our Story',
    'Gallery',
    'Q + A',
    'Some Advice',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'A',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Padding(padding: EdgeInsets.all(1.0)),
          Text(
            'and',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Padding(padding: EdgeInsets.all(1.0)),
          Text(
            'D',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        ..._links.asMap().entries.map(
          (entry) {
            int index = entry.key;
            return textLink(index);
          },
        ).toList(),
        const Padding(padding: EdgeInsets.all(12))
      ],
    );
  }

  Widget textLink(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            _hovers[index] = true;
          });
        },
        onExit: (event) {
          setState(() {
            _hovers[index] = false;
          });
        },
        child: Text(
          _links[index],
          style: TextStyle(
            fontSize: 17,
            decoration:
                _hovers[index] ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
