import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;

  const CustomTextButton(
      {super.key,
        required this.text,
        required this.onPressed,
        required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled?null : onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: isDisabled? Colors.grey[400] : const Color(0xFFE21A70),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text,textAlign: TextAlign.center,style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),),
        ),
      ),
    );
  }
}
