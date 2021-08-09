import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  String screen_name;
  Widget leading_part;
  List<Widget> actionPath;

  TopBar({
    @required this.screen_name,
    this.leading_part,
    this.actionPath,
  });

  @override
  Size get preferredSize => Size.fromHeight(50);

  Widget build(BuildContext context) {
    return AppBar(
      leading: leading_part,
      title: Text(screen_name),
      actions: actionPath,
    );
  }
}
