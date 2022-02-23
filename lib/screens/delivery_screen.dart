import 'package:fastrack/screens/package_information.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0.0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: dx_pink,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
            labelColor: dx_pink,
            unselectedLabelColor: Colors.grey,
            labelStyle: GoogleFonts.dosis(),
            tabs: [
              Tab(text: "All",),
              Tab(text: "Ongoing",),
              Tab(text: "Delivered",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 24),
              children: [
                Material(
                  child:
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PackageInformation(),));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey, width: 0.8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("#DGX3245", style: TextStyle(fontWeight: FontWeight.w900),),
                              Text("In transit", style: TextStyle(fontWeight: FontWeight.w900),),
                            ],
                          ),
                          SizedBox(height: 21,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("16 July, 20", style: TextStyle(color: Colors.grey),),
                                  Text("Lekki, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("18 July, 20", style: TextStyle(color: Colors.grey),),
                                  Text("Ikeja, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dx_pink
                                ),

                              ),
                              Expanded(child: Container(height: 2,color: dx_pink,)),
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: dx_pink
                                ),

                              ),
                              Expanded(child: Container(height: 2,color: dx_pink,)),
                              Container(
                                width: 30,
                                height: 30,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: dx_pink
                                ),
                                child: SvgPicture.asset("assets/images/d_van.svg", width: 16,color: Colors.white,fit: BoxFit.scaleDown,),

                              ),
                              Expanded(child: Container(height: 2,color: Colors.grey,)),
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey
                                ),

                              ),

                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Currently in recipiennts city", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#FGG3245", style: TextStyle(fontWeight: FontWeight.w900),),
                          Text("Delivered", style: TextStyle(fontWeight: FontWeight.w900, color: dx_green),),
                        ],
                      ),
                      SizedBox(height: 21,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("16 July, 20", style: TextStyle(color: Colors.grey),),
                              Text("Lekki, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("18 July, 20", style: TextStyle(color: Colors.grey),),
                              Text("Ikeja, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_green,)),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_green,)),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_green,)),
                          Container(
                            width: 30,
                            height: 30,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),
                            child: Icon(Entypo.check,size: 16, color: Colors.white,),

                          ),


                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Package has been delivered", style: TextStyle(fontWeight: FontWeight.bold,color: dx_green),)
                    ],
                  ),
                )
              ],
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 24),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#DGX3245", style: TextStyle(fontWeight: FontWeight.w900),),
                          Text("In transit", style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 21,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("16 July, 20", style: TextStyle(color: Colors.grey),),
                              Text("Lekki, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("18 July, 20", style: TextStyle(color: Colors.grey),),
                              Text("Ikeja, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_pink
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_pink,)),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_pink
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_pink,)),
                          Container(
                            width: 30,
                            height: 30,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_pink
                            ),
                            child: SvgPicture.asset("assets/images/d_van.svg", width: 16,color: Colors.white,fit: BoxFit.scaleDown,),

                          ),
                          Expanded(child: Container(height: 2,color: Colors.grey,)),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey
                            ),

                          ),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Currently in recipiennts city", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

              ],
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 24),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#FGG3245", style: TextStyle(fontWeight: FontWeight.w900),),
                          Text("Delivered", style: TextStyle(fontWeight: FontWeight.w900, color: dx_green),),
                        ],
                      ),
                      SizedBox(height: 21,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("16 July, 20", style: TextStyle(color: Colors.grey),),
                              Text("Lekki, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("18 July, 20", style: TextStyle(color: Colors.grey),),
                              Text("Ikeja, Lagos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: dx_pink),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_green,)),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_green,)),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),

                          ),
                          Expanded(child: Container(height: 2,color: dx_green,)),
                          Container(
                            width: 30,
                            height: 30,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: dx_green
                            ),
                            child: Icon(Entypo.check,size: 16, color: Colors.white,),

                          ),


                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Package has been delivered", style: TextStyle(fontWeight: FontWeight.bold,color: dx_green),)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
