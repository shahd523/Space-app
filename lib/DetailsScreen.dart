import 'package:assign3_flutter/Home_Page.dart';
import 'package:assign3_flutter/planet.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  static String routeName="DetailsScreen";
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as Planet;
   return SafeArea(
     child: Scaffold(
       backgroundColor: Color(0xff0E0E0E),
       body: Column(
         children: [
           Stack(
             children: [
               Image.asset("assets/images/homepage.png",width:double.infinity,fit: BoxFit.cover,)
     
     
           ,Positioned.fill(child:Column(
             children: [
               Row(
                 children: [ElevatedButton(onPressed: (){
                   Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => HomePage()),
                   );;
                 },
                     child:Icon(Icons.arrow_back,color: Colors.white,),
                 style: ElevatedButton.styleFrom(backgroundColor: Color(0xffEE403D),shape:CircleBorder()
     
                 ),),
                   Spacer(flex: 4,),
                   
                   Text(args.name,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),)
               ,Spacer(flex: 7,)
                 ],
               ),
               Spacer(),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                 child: Row(
                   children: [
                     Text(args.title,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
                   ],
                 ),
               )
     
             ],
     
           ))
     
         ],
       ),
         Expanded(child: ListView(
           children: [
             Image.asset(args.image),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("About",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
             )
     ,                 Padding(
       padding: const EdgeInsets.all(16.0),
       child: Text(args.title,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
     ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Distance from sun : ${args.distance}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Length of day:${args.length}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("orpital period :${args.orbitalperiod}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Radius:${args.radies}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Mass:${args.mass}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("gravity:${args.gravity}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("surface area: ${args.surface}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
             ),
     
           ],
         ))
         ]
       )
     ),
   );
   
  }

}