import 'package:flutter/material.dart';
import 'package:foodpanda/screens/verification_email_screen.dart';

import '../widgets/custom_text+button.dart';
import '../widgets/custom_text_field.dart';
import 'fill_account_Info_screen.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  TextEditingController passController =TextEditingController();
  String passText ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFF2B85),
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 15,bottom: 20),
            child: Image.asset("assets/login_icon.png",
              width: 60,),
          ),
          Text("Log in with your email",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Text("Log in with your password to rafsanzanirizon539@gmail.com. or"
              "get a link via email",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 30,),
          CustomTextField(controller: passController,
            labelText: "Password",
            noIcon: false,
            onChanged: (value){
              setState(() {
                passText=value;
              });
            },
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){},
            child: Text("I forgot my password?",
              style: TextStyle(
                color: Color(0xFFE21A70),
                fontWeight: FontWeight.w600,
              ),),
          ),
        ],
        ),
          Column(
            children: [
              Divider(
                height: 40,
                color: Colors.grey[200],
              ),
              CustomTextButton(text: "Login with password", onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>FillAccountInfoScreen()));
              }, isDisabled: passText.isEmpty),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationEmailScreen()));
                },
                child: Container(
                  width: double.infinity,
                  height: 58,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE21A70),),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                          "Send me login link",
                          style: TextStyle(
                            color: Color(0xFFE21A70),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                    ),
                  ),
                ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
