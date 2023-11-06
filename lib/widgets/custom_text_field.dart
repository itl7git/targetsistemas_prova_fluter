import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.controller,
      this.hint,
      this.prefix,
      this.suffix,
      this.textInputType,
      this.onChanged});

  final TextEditingController? controller;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType? textInputType;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
      padding: prefix != null ? null : const EdgeInsets.only(left: 16),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
