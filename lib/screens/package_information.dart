import 'package:fastrack/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PackageInformation extends StatefulWidget {
  const PackageInformation({Key? key}) : super(key: key);

  @override
  _PackageInformationState createState() => _PackageInformationState();
}

class _PackageInformationState extends State<PackageInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0.0,
        backgroundColor: Colors.white,

        leading: IconButton(onPressed: (){},icon: Icon(Entypo.chevron_left, color: Colors.black,),),
        title: Row(
          children: [
            Text("Package Information", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
            Text(" - ", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
            Text("#DCS3214", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 18,right: 18, bottom: 45),
children: [
  Container(
    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey, width: 0.8),
    ),
    child: Column(
      children: [
        Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 65,
                height: 65,
                child: Image.asset("assets/images/avatar.jpg", fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("David Mark", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Text("Your Rider")
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Ionicons.call)),
                Row(
                  children: [
                    Icon(AntDesign.star, size: 14, color: dx_pink,),
                    Icon(AntDesign.star, size: 14, color: dx_pink,),
                    Icon(AntDesign.star, size: 14, color: dx_pink,),
                    Icon(AntDesign.star, size: 14, color: dx_pink,),
                    Icon(AntDesign.star, size: 14, color: Colors.grey,),
                  ],
                )
              ],
            )
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Package delivery status:", style: TextStyle(fontWeight: FontWeight.bold),),
            MaterialButton(onPressed: (){},padding: EdgeInsets.symmetric(horizontal: 34), child: Text("In transit"),textColor: Colors.white, color: dx_pink,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(65)
            ),)
          ],
        ),


      ],
    ),
  ),
  SizedBox(height: 12,),
  Text("Tracking history", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  SizedBox(height: 32,),
  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Feather.check_circle, color: Colors.grey,),
          ...List.generate(8, (index) => Container(
            height: 6,
            width: 2,
            margin: EdgeInsets.symmetric(vertical: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.grey
            ),
          )),
          Icon(Feather.check_circle, color: dx_pink,),
          ...List.generate(8, (index) => Container(
            height: 6,
            width: 2,
            margin: EdgeInsets.symmetric(vertical: 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.grey
            ),
          )),
          Icon(Feather.check_circle, color: dx_pink,),
          ...List.generate(8, (index) => Container(
            height: 6,
            width: 2,
            margin: EdgeInsets.symmetric(vertical: 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.grey
            ),
          )),
          Icon(Feather.check_circle, color: dx_pink,),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                border:Border(bottom: BorderSide(color: Colors.grey, width: 0.4))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Today - 02:00pm", style: TextStyle(color: Colors.white),),
                  Text("Your Package was delivered", style: TextStyle(fontSize: 18, color: Colors.grey),),
                ],
              )),

          Container(
              height: 85,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border:Border(bottom: BorderSide(color: Colors.grey, width: 0.4))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Today - 02:00pm", style: TextStyle(color: Colors.grey),),
                  Text("Your package is in transit", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              )),

          Container(
              height: 85,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border:Border(bottom: BorderSide(color: Colors.grey, width: 0.4))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Today - 02:00pm", style: TextStyle(color: Colors.grey),),
                  Text("Your package was picked up", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              )),

          Container(
              height: 85,
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Today - 8:00am", style: TextStyle(color: Colors.grey),),
                  Text("Your package was assigned", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              )),


        ],
      )
    ],
  ),
  Text("Pickup Information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  SizedBox(height: 18,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("From:", style: TextStyle(color: Colors.grey),),
          Text("Lekki, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("To:", style: TextStyle(color: Colors.grey),),
          Text("Ikeja, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
        ],
      )
    ],
  ),
  Divider(),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Time & Date:"),
          SizedBox(height: 5,),
          Text("Vehicle type:")
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("10AM, 16 July 2020", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text("Mini-Van (N15,000)", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  ),
  SizedBox(height: 25,),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Delivery Information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      SizedBox(height: 18,),
      Text("Pickup Address:", style: TextStyle(color: Colors.grey),),
      Text("24, Jakande Estate Lekki Lagos Nigeria", style: TextStyle(color: dx_pink, fontSize: 16, fontWeight: FontWeight.bold),),

      SizedBox(height: 12,),

      Text("Delivery Address:", style: TextStyle(color: Colors.grey),),
      Text("30 Oba Akran Avenue, Ikeja Lagos Nigeria", style: TextStyle(color: dx_pink, fontSize: 16, fontWeight: FontWeight.bold),),

    ],
  ),
  Divider(),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Receiver Name:"),
          SizedBox(height: 5,),
          Text("Phone Number:")
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Falola Oluwaseyi", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text("08091236546", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  )
],
      ),
    );
  }
}
