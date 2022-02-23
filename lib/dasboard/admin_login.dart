import 'package:fastrack/dasboard/admin_screen.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  processLoading(){
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AdminDasboard(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dx_blue,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage("assets/images/truck.jpg",), fit: BoxFit.cover
                )
              ),

            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              constraints: BoxConstraints(maxWidth: 280),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        SvgPicture.asset(
                          "assets/images/d_van.svg",
                          width: 50,
                          color: Colors.amberAccent,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Fastrack",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,color:Colors.amberAccent),
                        )
                      ],
                    ),
                  ),
                  Text("Login Your Account",textScaleFactor: 2.1, style: TextStyle(fontWeight: FontWeight.bold,color: dx_lite_grey ),),
                  Text("...gain access into you goodies.", style: TextStyle(color: dx_lite_grey ),),
                  SizedBox(height: 18,),
                  Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,

                    child: TextFormField(
                      cursorColor: dx_lite_grey,
                      textAlignVertical: TextAlignVertical.center,

                      style: TextStyle(fontWeight: FontWeight.w800,color: dx_lite_grey),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                          hintText: "Username", hintStyle: TextStyle(color: dx_lite_grey),
                      prefixIcon: Icon(Feather.user, color: Colors.white, size: 18,),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: dx_lite_grey, width: 2),
                          borderRadius: BorderRadius.circular(8)

                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: dx_lite_grey, width: 2),
                        borderRadius: BorderRadius.circular(8)

                      ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amberAccent, width: 2),
                            borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,

                    child: TextFormField(

                      cursorColor: dx_lite_grey,
                      obscureText: true,
                      style: TextStyle(fontWeight: FontWeight.w800, color: dx_lite_grey),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Password", hintStyle: TextStyle(color: dx_lite_grey),
                          prefixIcon: Icon(Feather.lock, color: Colors.white, size: 18,),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: dx_lite_grey, width: 2),
                              borderRadius: BorderRadius.circular(8)

                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: dx_lite_grey, width: 2),
                              borderRadius: BorderRadius.circular(8)

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amberAccent, width: 2),
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                      ),

                  ),
                  Row(
                    children: [
                      // Text("Don't have an account?", style: TextStyle(color: dx_lite_grey ),),
                      // TextButton(onPressed: (){}, child: Text("Create", style: TextStyle(fontWeight: FontWeight.bold),), style: TextButton.styleFrom(
                      //     primary: Colors.amberAccent
                      // ),)
                    ],
                  ),
                  SizedBox(height: 44,),
                  Container(
                    height: 46,
                    width: double.infinity,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      onPressed: (){
                       setState(() {
                         isLoading=true;
                       });
                       processLoading();
                      },color: Colors.amberAccent, child: Text("Login"),textColor: Colors.black,),
                  ),
                  SizedBox(height: 34,),
                  Padding(
                    padding:EdgeInsets.all(18.0),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: [
                              TextSpan(text: "Using of the app means you have complied ", style: GoogleFonts.dosis(fontSize: 12, color: Colors.white)),
                              TextSpan(text: "to our ", style: GoogleFonts.dosis(fontSize: 12,color: Colors.white)),
                              TextSpan(text: "Privacy policies ", style: GoogleFonts.dosis(fontSize: 12, fontWeight: FontWeight.bold, color: dx_yellow)),
                              TextSpan(text: "and ", style: GoogleFonts.dosis(fontSize: 12, color: Colors.white)),
                              TextSpan(text: "Terms ", style: GoogleFonts.dosis(fontSize: 12, fontWeight: FontWeight.bold, color: dx_yellow)),
                            ]
                        )),
                  ),

                ],
              ),
            ),
          ),
          isLoading?Container(
            width: double.infinity,
            height: double.infinity,
            color: dx_blue.withOpacity(0.7),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(strokeWidth: 1, valueColor: AlwaysStoppedAnimation<Color>(dx_lite_grey),),
                Text("Please wait...", style:TextStyle(color: dx_lite_grey))
              ],
            ),
          ):SizedBox.shrink()
        ],
      ),
    );
  }
}
