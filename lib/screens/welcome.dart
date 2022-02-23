import 'package:fastrack/screens/add_money.dart';
import 'package:fastrack/screens/delivery_screen.dart';
import 'package:fastrack/screens/package_summary.dart';
import 'package:fastrack/screens/profile_screen.dart';
import 'package:fastrack/screens/wallet_screen.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'notification_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomAppBar(
       elevation: 0.0,
       child: Container(
         height: 54,
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             GestureDetector(

               onTap: (){
                 setState(() {
                   index = 0;
                 });
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Icon(index == 0 ? IconlyBold.home:IconlyLight.home, color:index == 0 ?dx_pink: Colors.grey,),
                   SizedBox(width: 3,),
                   Text("Home", style: TextStyle(color:index == 0 ?dx_pink: Colors.grey, fontWeight: FontWeight.bold),)
                 ],
               ),
             ),
             GestureDetector(
               onTap: (){
                 setState(() {
                   index = 1;
                 });
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Icon(index == 1 ?IconlyBold.wallet: IconlyLight.wallet, color:index == 1 ? dx_pink: Colors.grey,),
                   Text("Wallet", style: TextStyle(color: index == 1 ?dx_pink: Colors.grey, fontWeight: FontWeight.bold),)
                 ],
               ),
             ), GestureDetector(
               onTap: (){
                 setState(() {
                   index = 2;
                 });
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Icon(index == 2 ? IconlyBold.category:IconlyLight.category, color:index ==  2 ? dx_pink: Colors.grey,),
                   Text("Delivery", style: TextStyle(color:index == 2 ? dx_pink: Colors.grey, fontWeight: FontWeight.bold),)
                 ],
               ),
             ), GestureDetector(
               onTap: (){
                 setState(() {
                   index = 3;
                 });
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end, 
                 children: [
                   Icon(index == 3?IconlyBold.profile:IconlyLight.profile, color: index == 3?dx_pink:Colors.grey,),
                   Text("Profile", style: TextStyle(color:index == 3?dx_pink:Colors.grey, fontWeight: FontWeight.bold),)
                 ],
               ),
             )
           ],
         ),
       ),
     ),
      body: IndexedStack(
        index: index,
        children: [
          Home(),
          WalletScreen(),
          DeliveryScreen(),
          ProfileScreen(),
        ],
      ),

    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: SvgPicture.asset("assets/images/d_van.svg", width: 30,color: dx_pink,),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
          }, icon: Icon(Iconsax.notification, color: Colors.black,))
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 65, left: 18, right: 18),
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(text: "Hi, ", style: GoogleFonts.dosis(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black)),
              TextSpan(text: "Tari!", style: GoogleFonts.dosis(fontWeight: FontWeight.bold, fontSize: 25,color: dx_pink)),
            ]
          ))
          ,
          SizedBox(height: 45,),
          Text("Where are you sending a package to?"),
          SizedBox(height: 12,),
          Material(
            child: Container(
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(12)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pickup(),));
                },
                child: Row(
                  children: [

                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Center(child: Icon(Feather.box)),
                    ),
                    VerticalDivider(),

                    Expanded(
                      child: Text("Enter details here"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 36,),
          Text("What do you want to do?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
          SizedBox(height: 18,),
          Container(
            height: 80,
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddMoney(),));
              },color:  dx_lite_grey,elevation: 0.0, textColor: dx_pink, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ), child: Row(
              children: [
                Icon(IconlyLight.wallet, size: 35,),
                SizedBox(width: 4,),
                Text("Add Money", style: TextStyle( fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Feather.chevron_right)
              ],
            ),),
          ),
          SizedBox(height: 8,),
          Container(
            height: 80,
            child: MaterialButton(
              onPressed: (){},color:  dx_lite_grey,elevation: 0.0, textColor: Colors.green.shade700, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ), child: Row(
              children: [
                Icon(IconlyLight.bag, size: 35,),
                SizedBox(width: 4,),
                Text("Send parcel", style: TextStyle( fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Feather.chevron_right)
              ],
            ),),
          ),
          SizedBox(height: 8,),
          Container(
            height: 80,
            child: MaterialButton(
              onPressed: (){},color: dx_lite_grey,elevation: 0.0, textColor: Colors.amber.shade700, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ), child: Row(
              children: [
                Icon(IconlyLight.location, size: 35,),
                SizedBox(width: 4,),
                Text("Track Parcel", style: TextStyle( fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Feather.chevron_right)
              ],
            ),),
          )
        ],
      ),
    );
  }
}


class Pickup extends StatefulWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  _PickupState createState() => _PickupState();
}

class _PickupState extends State<Pickup> {

  List<String> timesamp = ["07am", "08am", "09am","10am", "11am", "12noon",
    "01pm","02pm", "03pm", "04pm", "05pm", "06pm", "07pm", "08pm", "09pm","10pm", "11pm",
  ];

  late String month, year, time;

  int selectVehicle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0.0,
        backgroundColor: Colors.white,

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Entypo.chevron_left, color: Colors.black,),),
        title: Text("Pickup location", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
      ),
      body:
      Container(
        color: Colors.white,
        child: ListView(
          physics: BouncingScrollPhysics(),
padding: EdgeInsets.symmetric(horizontal: 10),
          children: [

            Container(
              height: 95,

              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.green.shade700
                        ),
                      ),

                Container(
                          width: 1,
                          height: 38,
                          color:dx_lite_grey

                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:dx_pink
                        ),
                      )

                    ],
                  ),
                  SizedBox(width: 8,),
                  Expanded(child: Column(
                    children: [
                      Container(
                        height: 45,

                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color:Color(0xFFF0F1F1), width: 1 ),
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFF9FAFB)
                        ),
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(hintText: "Pickup location"),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(
                        height: 45,

                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            border: Border.all(color:Color(0xFFF0F1F1), width: 1 ),
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFF9FAFB)
                        ),
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(hintText: "Drop-off location"),
                        ),
                      ),

                    ],
                  ))
                ],
              ),
            ),
            SizedBox(height: 35,),
            Center(child: Text("Pickup Date", style: TextStyle(fontWeight: FontWeight.bold),),),
            SizedBox(height: 18,),
            Row(

              children: [
                Expanded(
                  child: Container(
                    height: 46,

                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    alignment: Alignment.centerLeft,
                    child: DropdownButtonFormField(
                      icon: Icon(Entypo.chevron_down, size: 18,),
                      decoration: InputDecoration.collapsed(hintText: "Month"),
                      onChanged: (value) {
                        print(value);
                      },
                      items: [
                      DropdownMenuItem(child: Text("January"), value: "January",),
                      DropdownMenuItem(child: Text("February"), value: "February",),
                      DropdownMenuItem(child: Text("March"), value: "March",),
                      DropdownMenuItem(child: Text("April"), value: "April",),
                      DropdownMenuItem(child: Text("May"), value: "May",),
                      DropdownMenuItem(child: Text("June"), value: "June",),
                      DropdownMenuItem(child: Text("July"), value: "July",),
                      DropdownMenuItem(child: Text("August"), value: "August",),
                      DropdownMenuItem(child: Text("September"), value: "September",),
                      DropdownMenuItem(child: Text("October"), value: "October",),
                      DropdownMenuItem(child: Text("November"), value: "November",),
                      DropdownMenuItem(child: Text("December"), value: "December",),
                    ],),
                  ),
                ),
SizedBox(width:4),
                Expanded(
                  child: Container(
                    height: 46,

                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    alignment: Alignment.centerLeft,
                    child: DropdownButtonFormField(
                      icon:Icon(Entypo.chevron_down, size: 18,),
                      decoration: InputDecoration.collapsed(hintText: "Year"),
                      alignment: Alignment.center,

                      onChanged: (value) {
                        print(value);
                      },
                      items:[
                        for(var i=DateTime.now().year; i<=2030; i++)  DropdownMenuItem(child: Text("${i}", textAlign: TextAlign.center,),value: i,)
                      ],),
                  ),
                ),
                SizedBox(width:4),
                Expanded(
                  child: Container(
                    height: 46,

                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    alignment: Alignment.centerLeft,
                    child: DropdownButtonFormField(
                        icon: Icon(Entypo.chevron_down, size: 18,),
                      decoration: InputDecoration.collapsed(hintText: "Time"),
                      onChanged: (value) {
                        print(value);
                      },
                      items: [
                     for(var i=6; i<=20; i++) DropdownMenuItem(child: i>12?Text("${i%12}pm"): Text("${i}am", ), value: i>12?"${i%12}pm": "${i}am",)

                    ],),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  children: [
                    Text("M", style: TextStyle(fontWeight:FontWeight.bold),),
                    Container(
                      width: 30,
                        height: 30,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.monday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize:DateTime.monday == DateTime.now().weekday? 28:18),))),

                  ],
                ),
                Column(
                  children: [
                    Text("T", style: TextStyle(fontWeight:FontWeight.bold),),
                    Container(
                      width: 30,
                      height: 30,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                      ),
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 2)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.tuesday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize: DateTime.tuesday == DateTime.now().weekday? 28:18),))),

                  ],
                ),
                Column(
                  children: [
                    Text("W", style: TextStyle(fontWeight:FontWeight.bold),),
                    Container(
                      width: 30,
                      height: 30,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white)
                        ,
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 3)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.wednesday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize: DateTime.wednesday == DateTime.now().weekday? 28:18),))),

                  ],
                ),

                Column(
                  children: [
                    Text("T", style: TextStyle(fontWeight:FontWeight.bold),),
                    Container(
                      width: 30,
                      height: 30,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white),
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 4)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.thursday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize: DateTime.thursday == DateTime.now().weekday? 28:18),))),

                  ],
                ),
                Column(
                  children: [
                    Text("F", style: TextStyle(fontWeight:FontWeight.bold),),
                    Container(
                      width: 30,
                      height: 30,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white),
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 5)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.friday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize: DateTime.friday == DateTime.now().weekday? 28:18),))),

                  ],
                ),
                Column(
                  children: [
                    Text("S", style: TextStyle(fontWeight:FontWeight.bold),),
                    Container(
                      width: 30,
                      height: 30,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white),
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 6)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.saturday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize: DateTime.saturday == DateTime.now().weekday? 28:18),))),

                  ],
                ),
                Column(
                  children: [
                    Text("S", style: TextStyle(fontWeight:FontWeight.bold, color: dx_pink),),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white),
                        child: Center(child: Text("${DateTime.now().subtract(Duration(days: DateTime.now().weekday - 7)).day}", style: TextStyle(fontWeight:FontWeight.bold, color:DateTime.sunday == DateTime.now().weekday? dx_pink:Colors.grey, fontSize: DateTime.sunday == DateTime.now().weekday? 28:18),))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 26,),

            Container(

                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  color: dx_lite_grey,
                ),
                height: 36,
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Selected Date: "
                      ),
                      Text(
                          "9th July, 2020",
                        style: TextStyle(fontWeight: FontWeight.bold, color: dx_pink),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                          "Time: "
                      ),
                      Text(
                        "10am",
                        style: TextStyle(fontWeight: FontWeight.bold, color: dx_pink),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 35,),
            Text("Select vehicle type",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: selectVehicle == 1 ? dx_pink: dx_lite_grey
                  ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        selectVehicle = 1;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/images/d_bike.svg", width: 50, color: selectVehicle==1?Colors.white:Colors.black,),
                        Text("Bike", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ,color: selectVehicle==1?Colors.white:Colors.black),),
                        Text("N5,000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: selectVehicle==1?Colors.white:Colors.black))
                      ],
                    ),
                  ),
                ),
                Container(

                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: selectVehicle == 2 ? dx_pink: dx_lite_grey
                  ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        selectVehicle = 2;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/images/d_van.svg",width: 50, color: selectVehicle==2?Colors.white:Colors.black),
                        Text("Min-Van", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: selectVehicle==2?Colors.white:Colors.black),),
                        Text("N10,000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: selectVehicle==2?Colors.white:Colors.black))
                      ],
                    ),
                  ),
                ),
                Container(

                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: selectVehicle == 3 ? dx_pink: dx_lite_grey
                  ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        selectVehicle = 3;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/images/d_truck.svg", width: 50, color: selectVehicle==3?Colors.white:Colors.black),
                        Text("Truck", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: selectVehicle==3?Colors.white:Colors.black),),
                        Text("N15,000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: selectVehicle==3?Colors.white:Colors.black),)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 35,),

            Container(
              height: 48,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PackageSummary(),));
                },color: dx_pink, textColor: Colors.white, child: Text("Continue"),shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),))
          ],
        ),
      ),
    );
  }
}


