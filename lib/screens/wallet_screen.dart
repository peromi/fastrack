import 'package:fastrack/screens/notification_screen.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
          }, icon: Icon(Iconsax.notification, color: Colors.black,))
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Align(
                alignment: Alignment.center,
                  child: Text("Current Balance", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
              Align(
                  alignment: Alignment.center,
                  child: Text("N45,900", textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 26),)),
              SizedBox(height: 12,),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.2)
                ),
                child: Column(
                  children: [
                    Text("Top up", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding:EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_pink
                              ),
                              child: Icon(Iconsax.home, color: Colors.white,),
                            ),
                            SizedBox(height: 4,),
                            Text("With Bank"),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Column(
                          children: [
                            Container(
                              padding:EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dx_pink
                              ),
                              child: Icon(Iconsax.card, color: Colors.white,),
                            ),
                            SizedBox(height: 4,),
                            Text("With Card"),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Column(
                          children: [
                            Container(
                              padding:EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dx_pink
                              ),
                              child: Icon(Iconsax.trade, color: Colors.white,),
                            ),
                            SizedBox(height: 4,),
                            Text("Transfer"),
                          ],
                        ),



                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Text("Transaction history", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(height: 15,),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading:  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: dx_pink.withOpacity(0.3),
                    ),
                    child: Icon(Iconsax.tag, color: Colors.black,)),
                title: Text("Delivery fee", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                subtitle: Text("July 06, 2020"),
                trailing: Text("-N19,300", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: dx_pink, fontSize: 18),),
              ),
              Divider(),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading:  Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: dx_green.withOpacity(0.3),
                ),
                child: Icon(Iconsax.card, color: Colors.black,)),
            title: Text("Top up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            subtitle: Text("July 06, 2020"),
            trailing: Text("+20,300", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: dx_green, fontSize: 18),),
          ),
              Divider(),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading:  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: dx_pink.withOpacity(0.3),
                    ),
                    child: Icon(Iconsax.tag, color: Colors.black,)),
                title: Text("Delivery fee", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                subtitle: Text("July 06, 2020"),
                trailing: Text("-N8,300", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: dx_pink, fontSize: 18),),
              ),
              Divider(),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading:  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: dx_yellow.withOpacity(0.3),
                    ),
                    child: Icon(Iconsax.tag1, color: Colors.black,)),
                title: Text("Transfer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                subtitle: Text("July 06, 2020"),
                trailing: Text("-N8,300", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: dx_yellow, fontSize: 18),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
