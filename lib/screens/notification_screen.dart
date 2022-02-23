import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,

            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon: Icon(Entypo.chevron_left, color: Colors.black,),),
            title: Text("Notifications", style:TextStyle(color: Colors.black, fontWeight:FontWeight.bold),),
          bottom: TabBar(
            labelStyle: GoogleFonts.dosis(),
            unselectedLabelColor: Colors.grey,
            labelColor: dx_pink,
            indicatorColor: dx_pink,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            tabs: [
              Tab(text: "Read",),
              Tab(text: "Unread",),
            ],
          ),
          ),
body: Container(
  height: MediaQuery.of(context).size.height,
  decoration: BoxDecoration(
    border: Border(top: BorderSide(color: dx_pink, width: 0.5))
  ),
  child:   TabBarView(
    physics: BouncingScrollPhysics(),
    children: [

      ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("mins ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package In Transit", style: TextStyle(fontWeight: FontWeight.bold, color: dx_yellow),),
            subtitle: Text("Your package is on its way ot its recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("60", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("mins ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package not received", style: TextStyle(fontWeight: FontWeight.bold, color: dx_pink),),
            subtitle: Text("Unfortunately, package delivery failed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("hrs ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("mins ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("hrs ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("12", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("hrs ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("days ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("16", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("days ago"),
              ],
            ),
          ),
        ],
      ),

      ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("mins ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package In Transit", style: TextStyle(fontWeight: FontWeight.bold, color: dx_yellow),),
            subtitle: Text("Your package is on its way ot its recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("60", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("mins ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package not received", style: TextStyle(fontWeight: FontWeight.bold, color: dx_pink),),
            subtitle: Text("Unfortunately, package delivery failed"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("hrs ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("mins ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("hrs ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("12", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("hrs ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("days ago"),
              ],
            ),
          ),
          ListTile(
            dense: true,
            title: Text("Package delivered", style: TextStyle(fontWeight: FontWeight.bold, color: dx_green),),
            subtitle: Text("Your package is now with the recipient"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("16", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("days ago"),
              ],
            ),
          ),
        ],
      ),

    ],

  ),
),
      ),
    );
  }
}
