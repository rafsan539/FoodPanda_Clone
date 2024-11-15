import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController?controller;
  final String labelText;
  bool noIcon;
  Function(String)? onChanged;

   CustomTextField(
       {super.key,
         required this.controller,
         required this.labelText ,
         this.noIcon = true ,
         this.onChanged});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconColor:const Color(0xFFE21A70),
        suffixIcon: widget.noIcon
            ? const SizedBox()
            : IconButton(
                onPressed: (){
                  setState(() {
                    isObsecure =!isObsecure;
                  });
                  },
          icon: isObsecure
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off,),
        ),
        labelText: widget.labelText,
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
    );
  }
}
