import 'package:fastrack/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Iconsax.notification, color: Colors.black,))
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(

          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border:Border.all(color: dx_pink, width: 2),

                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("assets/images/avatar.jpg",),fit: BoxFit.cover,scale: 1.0)
              ),
            ),
            Text("Ayebaiduate Harmony", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 12,),
            Container(
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: dx_pink
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Balance:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                      Text("N9,300", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 35,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Deliveries:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),),
                      Text("5", style: TextStyle(color: Colors.white),),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(width: 35,),
            Divider(),
            SizedBox(width: 55,),
            ListTile(

              contentPadding: EdgeInsets.zero,
              dense: true,
              leading:  Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: dx_pink,
                ),
                  child: Icon(Iconsax.user, color: Colors.white,)),
              title: Text("Your Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              subtitle: Text("Name, Email, Phone, Password"),
              trailing: Icon(Entypo.chevron_right),
            ),
            Divider(),
            ListTile(
contentPadding: EdgeInsets.zero,
              dense: true,
              leading:  Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: dx_pink,
                  ),
                  child: Icon(Iconsax.notification, color:Colors.white)),
              title: Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              subtitle: Text("Get instant delivery status"),
              trailing: Icon(Entypo.chevron_right),
            )
            ,
            Spacer()
            ,
            MaterialButton(onPressed: (){}, child: Text("Logout"), textColor: dx_pink, shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(65)
            ),),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}
