import 'package:fastrack/screens/login_screen.dart';
import 'package:fastrack/screens/signup_screen.dart';
import 'package:fastrack/screens/welcome.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  int index = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0.0,
  
  actions: [
    TextButton(onPressed: (){}, child: Text("Skip", style: TextStyle(color: Colors.black),))
  ],
),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: PageView(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  width: 300,
                  height: double.infinity,
                  child: Column(
                    children: [
                      
                      Expanded(child: Image.asset("assets/images/3.jpg",fit: BoxFit.cover,)),
                      Text("Fast Pickup", style: TextStyle(fontSize: 28, color: dx_pink, fontWeight: FontWeight.w900),),
                      SizedBox(height: 18,),
                      Text("Push a button and we are there to\npickup in minutes",textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: double.infinity,
                  child: Column(
                    children: [
                    Expanded(child: Image.asset("assets/images/2.jpg",fit: BoxFit.cover,)),
                      Text("Affordable Delivery", style: TextStyle(fontSize: 28, color: dx_pink, fontWeight: FontWeight.w900)),
                      SizedBox(height: 18,),
                      Text("Getting your package delivered shouldn't\nbe expensive, we make it affordable",textAlign: TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/1.jpg", fit: BoxFit.cover,)),
                      Text("Easy Tracking", style: TextStyle(fontSize: 28, color: dx_pink, fontWeight: FontWeight.w900)),
                      SizedBox(height: 18,),
                      Text("Always know where your package\nis in realtime.",textAlign: TextAlign.center),
                    ],
                  ),
                )
              ],
            )
            ),
            SizedBox(height: 45,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:5,
                  width: index == 0?35:20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 0?dx_pink:Colors.grey
                  ),
                ),
                SizedBox(width: 4,),
      Container(
        height:5,
        width: index == 1?35:20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: index == 1?dx_pink:Colors.grey
        ),
      ),
                SizedBox(width: 4,),
                Container(
                  height:5,
                  width: index == 2?35:20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: index == 2?dx_pink:Colors.grey
                  ),
                ),
              ],
            ),
SizedBox(height: 65,),
            Container(
              width: double.infinity,
                height: 48,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                },color:dx_pink, textColor: Colors.white, elevation: 0.0,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ), child: Text("Sign up"),)),
            SizedBox(height: 12,),
            Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen(),));
                }, textColor: dx_pink,shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: dx_pink),
                  borderRadius: BorderRadius.circular(12)
                ), child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),)),
            SizedBox(height: 75,),
          ],
        ),
      ),
    );
  }
}
