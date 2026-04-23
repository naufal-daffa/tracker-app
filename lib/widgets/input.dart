import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final double radius;
  final Icon? suffix;
  final Icon? prefix;
  final TextInputType? type;

  const InputCustom({
    super.key,
    this.controller,
    required this.text,
    this.radius = 30,
    this.suffix,
    this.prefix,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          suffixIcon: suffix,
          prefixIcon: prefix,
        ),
      ),
    );
  }
}