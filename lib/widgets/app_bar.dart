import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? title;
  final IconButton? leading;
  final List<Widget>? actions;
  final bool center;

  const AppBarCustom({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.center = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(children: title ?? []),
      leading: leading,
      actions: actions,
      centerTitle: center,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
