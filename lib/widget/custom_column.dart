import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String text;
  const CustomColumn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black12,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
