import 'package:flutter/material.dart';

class SignUpInputFieldBuilder extends StatefulWidget {
  final double screenWidth;
  final bool isSmallScreen;
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool isPassword;
  const SignUpInputFieldBuilder({
    super.key,
    required this.isSmallScreen,
    required this.screenWidth,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.isPassword,
  });

  @override
  State<SignUpInputFieldBuilder> createState() =>
      _LoginInputFieldBuilderState();
}

class _LoginInputFieldBuilderState extends State<SignUpInputFieldBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          widget.isSmallScreen
              ? widget.screenWidth * 0.8
              : widget.screenWidth * 0.5,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
      ),
      child: TextField(
        controller: widget.controller,

        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 14,
          ),
          prefixIcon: Icon(
            widget.icon,
            color: Colors.white.withOpacity(0.7),
            size: 20,
          ),
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.white.withOpacity(0.7),
                      size: 20,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  )
                  : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
