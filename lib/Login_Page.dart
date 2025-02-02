
import 'package:assign3_flutter/Home_Page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  static  const String routeName="login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: Stack(
        children: [
          Image.asset("assets/images/photo 0.png",fit:BoxFit.fill),
          Align(alignment: Alignment.centerLeft,
              child: Text("Explore The Universe ",
                style: TextStyle(fontSize: 48,fontWeight: FontWeight.w900,color: Color(0xffFFFFFF),fontStyle:FontStyle.normal,wordSpacing:150.0 ),)),
          SizedBox(height: 100,),
          Align(alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context,HomePage.routeName);
                },child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Explore",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF)),),
                    Icon(Icons.arrow_forward,color: Colors.white,)
                  ],
                )
                ,style: ElevatedButton.styleFrom(backgroundColor: Color(0xffEE403D),minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Color(0xffEE40))
                )
                  ),
                ),
              )
          )
        ],
      ),
    );
  }

}