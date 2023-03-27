import 'package:flutter/cupertino.dart';
import 'custom_icon_instant_category.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomRow({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        SizedBox(
          width: 20,
        ),
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}
