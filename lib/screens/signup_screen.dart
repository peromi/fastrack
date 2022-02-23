import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'otp_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dx_pink,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Entypo.chevron_left),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account",textScaleFactor: 2.1, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text("...gain access into you goodies.", style: TextStyle(color:Colors.white),),
              SizedBox(height: 18,),
              Container(
                height: 45,
                width: double.infinity,
alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Your Name"),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 45,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Your Email"),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 45,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Your Mobile"),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 45,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Your Password"),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 45,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Confirm Your Password"),
                ),
              ),

              Row(
                children: [
                  Text("Already have and account?", style: TextStyle(color:Colors.white),),
                  TextButton(onPressed: (){}, child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold),), style: TextButton.styleFrom(
                    primary: Colors.white
                  ),)
                ],
              ),
              SizedBox(height: 34,),
              Container(
                height: 46,
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
                },color: Colors.white, child: Text("Create Account"),),
              ),
              Spacer(),
              Padding(
                padding:EdgeInsets.all(18.0),
                child: RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                  children: [
                    TextSpan(text: "Using of the app means you have complied ", style: GoogleFonts.dosis(fontSize: 12)),
                    TextSpan(text: "to our ", style: GoogleFonts.dosis(fontSize: 12)),
                    TextSpan(text: "Privacy policies ", style: GoogleFonts.dosis(fontSize: 12, fontWeight: FontWeight.bold)),
                    TextSpan(text: "and ", style: GoogleFonts.dosis(fontSize: 12)),
                    TextSpan(text: "Terms ", style: GoogleFonts.dosis(fontSize: 12, fontWeight: FontWeight.bold)),
                  ]
                )),
              ),
              SizedBox(height: 128,),
            ],
          ),
        ),
      ),
    );
  }
}
