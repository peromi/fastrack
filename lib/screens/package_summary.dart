import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageSummary extends StatefulWidget {
  const PackageSummary({Key? key}) : super(key: key);

  @override
  _PackageSummaryState createState() => _PackageSummaryState();
}

class _PackageSummaryState extends State<PackageSummary> {
  String? item;
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
        title: Text("Package Summary", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 18),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 0.5)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)
                      ),
                      child: Center(
                        child: Text("1.", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text("Pickup Information", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("From:", style: TextStyle(color: Colors.grey),),
                        Text("Lekki, Lagos", style: TextStyle(color: dx_pink, fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("To:", style: TextStyle(color: Colors.grey),),
                        Text("Ikeja, Lagos", style: TextStyle(color: dx_pink, fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12,),
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
                )
              ],
            ),
          ),
          SizedBox(height: 21,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 0.5)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding:EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                      ),
                      child: Center(
                        child: Text("2.", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text("Delivery Information", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Text("Pickup Address:", style: TextStyle(color: Colors.grey),),
                Text("24, Jakande Estate Lekki Lagos Nigeria", style: TextStyle(color: dx_pink, fontSize: 16, fontWeight: FontWeight.bold),),

                SizedBox(height: 12,),

                Text("Delivery Address:", style: TextStyle(color: Colors.grey),),
                Text("30 Oba Akran Avenue, Ikeja Lagos Nigeria", style: TextStyle(color: dx_pink, fontSize: 16, fontWeight: FontWeight.bold),),

                SizedBox(height: 12,),
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
          ),
          SizedBox(height: 21,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 0.5)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding:EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                      ),
                      child: Center(
                        child: Text("3.", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text("Package Information", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),

                Text("What are you sending?", style: TextStyle(color: Colors.grey),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item != null ? item!:"Select Item", style: TextStyle(color: dx_pink, fontSize: 20, fontWeight: FontWeight.bold),),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: dx_pink,
                      ),
                        child: IconButton(onPressed: () async{
                         await showModalBottomSheet(context: context, builder:(context) => Material(
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("Pick Your Category", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 21),),
                                ),
                                Divider(),
                                ListTile(
                                  onTap: (){
                                    Navigator.pop(context, "Fragile Items");
                                  },
                                  title: Text("Fragile Items"),
                                ),
                                ListTile(
                                  onTap: (){
                                    Navigator.pop(context, "Furniture");
                                  },
                                  title: Text("Furniture"),
                                ),
                                ListTile(
                                  onTap: (){
                                    Navigator.pop(context, "Books & Documents");
                                  },
                                  title: Text("Books & Documents"),
                                ),
                                ListTile(
                                  onTap: (){
                                    Navigator.pop(context, "Vegetables");
                                  },
                                  title: Text("Vegetables"),
                                ),
                                ListTile(
                                  onTap: (){
                                    Navigator.pop(context, "Classified");
                                  },
                                  title: Text("Classified"),
                                )
                              ],
                            ),
                          )).then((value){
                            setState(() {
                              item = value;
                            });
                         });
                        }, icon: Icon(Entypo.chevron_right), padding: EdgeInsets.zero, color: Colors.white,))
                  ],
                ),



              ],
            ),
          ),
          SizedBox(height: 35,),

          Container(
              height: 48,
              child: MaterialButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => PackageSummary(),));
              },color: dx_pink, textColor: Colors.white, child: Text("Process Pickup"),shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),))

        ],
      ),
    );
  }
}
