import 'package:flutter/material.dart';
import 'package:foodpanda/widgets/custom_text+button.dart';
import 'package:foodpanda/widgets/custom_text_field.dart';

import 'loginwithemailscreen.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  TextEditingController emailController =TextEditingController();
  String emailText ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF2B85),
        actions: [
          TextButton(onPressed: (){}, child: Text(
              "Continue",
            style: TextStyle(
              color: emailText.isEmpty? Colors.grey[400] : Color(0xFFD5216D),
            ),
          ),),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 15,bottom: 20),
                child: Image.asset("assets/email_icon.png",
                width: 60,),
              ),
              const Text("Whats/'s your email?",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 20,),
              const Text("We\'ll check if you have an account",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30,),
              CustomTextField(controller: emailController,
                  labelText: "Email",
                  onChanged: (value){
                setState(() {
                  emailText=value;
                });
                  },),
            ],
          ),
          ),
          Divider(
            height: 35,
            color: Colors.grey[300],),
          CustomTextButton(text: "Continue", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWithEmailScreen()));
          }, isDisabled: emailText.isEmpty),
        ],
      ),
      ),
    );
  }
}
