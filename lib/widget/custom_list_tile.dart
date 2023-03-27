import 'package:flutter/material.dart';
import '../constant/constant.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: ListTile(
        title: Text(title),
        trailing: Icon(
          icon,
          color: Colors.blue,
        ),
        onTap: onTap,
      ),
    );
  }
}
