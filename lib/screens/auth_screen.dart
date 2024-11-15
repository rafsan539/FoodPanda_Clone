import 'package:flutter/material.dart';

import 'email_auth_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF2B85),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size .height/1.8,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Align(alignment: Alignment.centerLeft,
                child: Padding(
                    padding:EdgeInsets.all(15),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                ),
                ),
                Center(
                  child: Image.asset("assets/auth_back.png",height: 300,),
                ),
              ],
            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 18),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                const Align(alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up or Log in",
                      style:TextStyle(
                          fontSize:24,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Select your preferred method to continue",
                      textAlign: TextAlign.left,
                      style:TextStyle(
                          fontSize:15,
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/google_icon.webp",width: 25,),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1878F3),
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/facebook_icon.png",width: 30,),
                        const Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child:Divider(
                      color: Colors.grey[300],
                    ),
                    ),
                    Text("  or  ",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[400],
                    ),
                    ),
                    Expanded(child:Divider(
                      color: Colors.grey[300],
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailAuthScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color:const Color(0xFFE21A70),),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.mail_outline_rounded,
                        color: Color(0xFFE21A70),),
                        Text(
                          "Continue with Email",
                          style: TextStyle(
                            color: Color(0xFFE21A70),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
