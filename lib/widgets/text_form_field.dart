import 'package:flutter/material.dart';

class AuthFormField extends StatefulWidget {
  const AuthFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.fieldController,
    required this.isPassword,
  });

  final TextEditingController fieldController;
  final String hintText;
  final String labelText;
  final bool isPassword;

  @override
  State<AuthFormField> createState() => _AuthFormFieldState();
}

class _AuthFormFieldState extends State<AuthFormField> {
  late bool isVisible;
  @override
  void initState() {
    isVisible = false;
    super.initState();
  }

  void _toggle() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      obscureText: isVisible,
      controller: widget.fieldController,
      cursorColor: Colors.black87,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                enableFeedback: false,
                onPressed: _toggle,
                icon: Icon(
                  isVisible == false
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 23,
                ),
              )
            : null,
        contentPadding:
            const EdgeInsets.only(top: 12, left: 25, right: 10, bottom: 15),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 158, 217, 8),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        labelText: widget.labelText,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 15,
          color: Colors.black,
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 158, 217, 8), width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
