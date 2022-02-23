import 'package:fastrack/screens/welcome.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text("OTP",textScaleFactor: 2.1, style: TextStyle(fontWeight: FontWeight.bold,color: dx_pink ),),
              Text("Enter the otp code sent to your phone.", style: TextStyle(color: dx_pink ),),
              SizedBox(height: 18,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: TextFormField(
                        maxLength: 1,
textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,
                        showCursor: false,
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if(value.length > 0){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: "",
                          focusColor: dx_pink,
                          fillColor: dx_pink,

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: dx_pink))
                        ,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: Colors.black)),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,
                        showCursor: false,
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if(value.length > 0){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: "",
                          focusColor: dx_pink,
                          fillColor: dx_pink,

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: dx_pink))
                          ,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: Colors.black)),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,
                        showCursor: false,
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if(value.length > 0){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: "",
                          focusColor: dx_pink,
                          fillColor: dx_pink,

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: dx_pink))
                          ,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: Colors.black)),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: TextFormField(
                        maxLength: 1,
                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,
                        showCursor: false,
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if(value.length > 0){
                            FocusScope.of(context).canRequestFocus = false;
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),));
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: "",
                          focusColor: dx_pink,
                          fillColor: dx_pink,

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: dx_pink))
                          ,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(65),
                              borderSide: BorderSide(width: 2, color: Colors.black)),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Resend"), style: TextButton.styleFrom(primary: dx_pink),),
                  TextButton(onPressed: (){}, child: Text("Call"), style: TextButton.styleFrom(primary: dx_pink),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
