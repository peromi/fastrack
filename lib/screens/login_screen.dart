import 'package:fastrack/screens/welcome.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Entypo.chevron_left,color: dx_pink,),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text("Login Your Account",textScaleFactor: 2.1, style: TextStyle(fontWeight: FontWeight.bold,color: dx_pink ),),
              Text("...gain access into your goodies.", style: TextStyle(color: dx_pink ),),
              SizedBox(height: 18,),
              Container(
                height: 45,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: dx_pink, width: 1)
                ),
                child: TextFormField(
                  cursorColor: dx_pink,
                  style: TextStyle(fontWeight: FontWeight.w800),
                  decoration: InputDecoration.collapsed(hintText: "Username"),
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
                    border: Border.all(color: dx_pink, width: 1)
                ),
                child: TextFormField(
                  cursorColor: dx_pink,
                  obscureText: true,
                  style: TextStyle(fontWeight: FontWeight.w800),
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              Row(
                children: [
                  Text("Don't have an account?", style: TextStyle( ),),
                  TextButton(onPressed: (){}, child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.bold),), style: TextButton.styleFrom(
                      primary: dx_pink
                  ),)
                ],
              ),
              SizedBox(height: 34,),
              Container(
                height: 46,
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => WelcomeScreen(),));
                },color: dx_pink, child: Text("Login"),textColor: Colors.white,),
              ),
              Spacer(),
              Padding(
                padding:EdgeInsets.all(18.0),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(text: "Using of the app means you have complied ", style: GoogleFonts.dosis(fontSize: 12, color: Colors.black)),
                          TextSpan(text: "to our ", style: GoogleFonts.dosis(fontSize: 12,color: Colors.black)),
                          TextSpan(text: "Privacy policies ", style: GoogleFonts.dosis(fontSize: 12, fontWeight: FontWeight.bold, color: dx_pink)),
                          TextSpan(text: "and ", style: GoogleFonts.dosis(fontSize: 12, color: Colors.black)),
                          TextSpan(text: "Terms ", style: GoogleFonts.dosis(fontSize: 12, fontWeight: FontWeight.bold, color: dx_pink)),
                        ]
                    )),
              ),
              SizedBox(height: 146,)
            ],
          ),
        ),
      ),
    );
  }
}
