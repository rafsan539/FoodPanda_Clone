import 'package:flutter/material.dart';

import '../widgets/custom_text+button.dart';
import '../widgets/custom_text_field.dart';
import 'home_screen.dart';
class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  TextEditingController firstNameController =TextEditingController();
  TextEditingController lastNameController =TextEditingController();
  TextEditingController passController =TextEditingController();
  String firstNameText ='';
  String lastNameText ='';
  String passText ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFF2B85),
        actions: [
          TextButton(onPressed: (){},
            child: Text(
            "Continue",
            style: TextStyle(
              color: firstNameText.isEmpty ||
                      lastNameText.isEmpty ||
                      passText.isEmpty
                  ? Colors.grey[400]
                  : Color(0xFFD5216D),
            ),
          ),),
        ],
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
                  child: Image.asset("assets/profile_icon.png",
                    width: 60,),
                ),
                Text(
                  "Let\'s get you started!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Text("First, let\'s create your foodpanda account with  "
                    "rafsanzani@gmail.com",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2 -15,
                      padding: EdgeInsets.only(right: 7),
                      child:
                      CustomTextField(
                        controller: firstNameController,
                        labelText: "First Name",
                        onChanged: (value){
                          setState(() {
                            firstNameText=value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2 -15,
                      padding: EdgeInsets.only(right: 7),
                      child:
                      CustomTextField(
                        controller: lastNameController,
                        labelText: "Last Name",
                        onChanged: (value){
                          setState(() {
                            lastNameText=value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
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
              ],
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomTextButton(
                    text: "Continue",
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    },
                    isDisabled: firstNameText.isEmpty ||
                        lastNameText.isEmpty ||
                        passText.isEmpty,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
