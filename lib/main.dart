import 'package:fastrack/dasboard/admin_login.dart';
import 'package:fastrack/dasboard/admin_screen.dart';
import 'package:fastrack/screens/story.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent
    ));
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack, overlays: [ SystemUiOverlay.bottom, SystemUiOverlay.top]);
    return MaterialApp(
      title: 'Fastrack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.dosisTextTheme()
      ),
      home: WebDashboard(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool getcolor = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flowwell();
  }

  flowwell(){
    Future.delayed(Duration(seconds: 3), (){
      setState(() {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => StoryScreen(),));
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:getcolor? dx_pink:Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/d_van.svg", width: 100, color: Colors.white,),
                Text("Fastrack", textScaleFactor: 3.8, style: GoogleFonts.dosis(color:Colors.white,fontWeight: FontWeight.bold ),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fast", style: TextStyle(color: Colors.white),),
                   Container(
                     width: 4,
                     height: 4,
                     margin: EdgeInsets.all(4),
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white
                     ),
                   ),
                    Text("Smooth", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    Container(
                      width: 4,
                      height: 4,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                    ),
                    Text("Reliable", style: TextStyle(color: Colors.white),),
                  ],
                ),
                SizedBox(height: 185,)
              ],
            ),
          ),
          Positioned(
            bottom: 70,
              left: 0,
              right: 0,
              child: Center(child: Text("Version 0.1.0", style: TextStyle(color: Colors.white),)))
        ],
      ),
    );
  }
}


class WebDashboard extends StatefulWidget {
  const WebDashboard({Key? key}) : super(key: key);

  @override
  _WebDashboardState createState() => _WebDashboardState();
}

class _WebDashboardState extends State<WebDashboard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){

      if(constraints.maxWidth >= 1200)
        {
        //  WINDOWS
          return AdminLogin();
        }else
          return Splash();

    },);
  }
}

