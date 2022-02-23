import 'package:fastrack/dasboard/transporter_screen.dart';
import 'package:fastrack/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AdminDasboard extends StatefulWidget {
  const AdminDasboard({Key? key}) : super(key: key);

  @override
  _AdminDasboardState createState() => _AdminDasboardState();
}

class _AdminDasboardState extends State<AdminDasboard> {
  int selectPage = 0;
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) =>
          const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 32,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (context, value) =>
          const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
          interval: 1,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 32,
          interval: 1,
          margin: 12,
        ),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
      ),
      borderData:
      FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!,
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!,
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }

  bool dashboard = false;
  bool transporter = false;
  bool delivery = false;
  bool client = false;
  bool tracker = false;

  ScrollController _sideController = ScrollController();
  ScrollController _mainController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250,
              color: dx_blue,
              padding: EdgeInsets.only(left: 12, top: 18),
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/images/d_van.svg",
                      width: 40,
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
                  Expanded(
                    child:
                    ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      controller: _sideController,
                      children: [
                        SizedBox(height:24),

                        Text("Main Menu", style:TextStyle(color:Colors.white)),
                        SizedBox(height:14),
                        InkWell(
                          onTap: (){
                            setState(() {
                              selectPage = 0;
                            });
                            print("Yess.............");
                          },
                          onHover: (value) {
                            setState(() {
                              dashboard = value;
                            });
                          },
                          enableFeedback: true,


                          child: Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: dashboard?Colors.amberAccent:Colors.transparent,
                              borderRadius: BorderRadius.circular(65)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               Icon(Feather.home,color:dashboard?Colors.black:Colors.white),
                               SizedBox(width: 12,),
                               Text("Dashboard", style:TextStyle(color:dashboard?Colors.black:Colors.white))
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            print("Yess.............");
                            setState(() {
                              selectPage=1;
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              transporter = value;
                            });
                          },

                          child: Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: transporter?Colors.amberAccent:Colors.transparent,
                              borderRadius: BorderRadius.circular(65)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                             Icon(AntDesign.adduser,color: transporter?Colors.black:Colors.white),

                               SizedBox(width: 12,),
                                Text("Transporters", style:TextStyle(color: transporter?Colors.black:Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            print("Yess.............");
                          },
                          onHover: (value) {
                           setState(() {
                             delivery = value;
                           });
                          },

                          child: Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: delivery?Colors.amberAccent:Colors.transparent,
                              borderRadius: BorderRadius.circular(65)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Feather.box,color:delivery?Colors.black:Colors.white),
                               SizedBox(width: 12,),
                                Text("Deliveries", style:TextStyle(color: delivery?Colors.black:Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            print("Yess.............");
                          },
                          onHover: (value) {
                            setState(() {
                              client = value;
                            });
                          },
                          hoverColor: Colors.amber,
                          highlightColor: Colors.red,
                          enableFeedback: true,
                          focusColor: Colors.green,
                          borderRadius: BorderRadius.circular(65),

                          child: Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color:client? Colors.amberAccent:Colors.transparent,
                              borderRadius: BorderRadius.circular(65)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(AntDesign.addusergroup,color:client?Colors.black:Colors.white),
                               SizedBox(width: 12,),
                                Text("Clients", style:TextStyle(color:client?Colors.black:Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            print("Yess.............");
                          },
                          onHover: (value) {
                            setState(() {
                              tracker = value;
                            });
                          },

                          child: Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: tracker? Colors.amberAccent:Colors.transparent,
                              borderRadius: BorderRadius.circular(65)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Feather.activity,color:tracker?Colors.black:Colors.white),
                               SizedBox(width: 12,),
                                Text("Track", style:TextStyle(color:tracker?Colors.black:Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:24),

                        Text("Internal Tool", style:TextStyle(color:Colors.white)),

                        ListTile(
                          leading: Icon(Feather.headphones,color:Colors.white),
                          title: Text("Support", style:TextStyle(color:Colors.white)),
                        ),

                        ListTile(
                          leading: Icon(Ionicons.bar_chart,color:Colors.white),
                          title: Text("Analytics", style:TextStyle(color:Colors.white)),
                        ),

                        ListTile(
                          leading: Icon(Feather.life_buoy,color:Colors.white),
                          title: Text("Ticket", style:TextStyle(color:Colors.white)),
                        ),

                        ListTile(
                          leading: Icon(AntDesign.folder1,color:Colors.white),
                          title: Text("Invoices", style:TextStyle(color:Colors.white)),
                        ),

                        ListTile(
                          leading: Icon(AntDesign.wallet,color:Colors.white),
                          title: Text("Payments", style:TextStyle(color:Colors.white)),
                        ),

                        ListTile(
                          leading: Icon(AntDesign.setting,color:Colors.white),
                          title: Text("Settings", style:TextStyle(color:Colors.white)),
                        ),
                      ]

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Scaffold(
                  backgroundColor: Color(0xFF01091D),
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: TextFormField(
                  style:TextStyle(color:Colors.white),
                  decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Feather.search, color:Colors.white),
                      border: InputBorder.none),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Feather.bell, color: Colors.white)),
                  Container(
                    width: 2,
                    height:8,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: dx_pink, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/avatar.jpg",
                            ),
                            fit: BoxFit.cover,
                            scale: 1.0)),
                  ),
                  SizedBox(
                    width: 12,
                  )
                ],
              ),
              body: IndexedStack(
                index: selectPage,
                children:[
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    physics: BouncingScrollPhysics(),
                    child: Column(

                      children: [
                        Container(
                          height: 200,
                          margin: EdgeInsets.only(top: 21),

                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Material(
                                  elevation: 12,
                                  borderRadius: BorderRadius.circular(8),
                                  clipBehavior: Clip.antiAlias,
                                  shadowColor: Colors.black12,
                                  color: dx_blue,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: double.infinity,
                                        padding: EdgeInsets.only(left: 55),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text("Customers", style:TextStyle(color:Colors.white)),
                                            Text(
                                              "120.9k",
                                              style: TextStyle(fontSize: 45, color:Colors.white),
                                            ),
                                            Text("211k joined today.", style:TextStyle(color:Colors.white))
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right:0,
                                        bottom: 0,
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          padding: EdgeInsets.only(left: 12, top: 18),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(65)),
                                              color:dx_pink
                                          ),
                                          child:  Center(

                                            child: Icon(
                                              AntDesign.adduser,
                                              size: 21,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),

                              Expanded(
                                child: Material(
                                  elevation: 12,
                                  borderRadius: BorderRadius.circular(8),
                                  clipBehavior: Clip.antiAlias,
                                  shadowColor: Colors.black12,
                                  color: dx_blue,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: double.infinity,
                                        padding: EdgeInsets.only(left: 55),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text("Transporters", style:TextStyle(color:Colors.white)),
                                            Text(
                                              "310.9k",
                                              style: TextStyle(fontSize: 45, color:Colors.white),
                                            ),
                                            Text("306k joined today.", style:TextStyle(color:Colors.white))
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right:0,
                                        bottom: 0,
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          padding: EdgeInsets.only(left: 12, top: 18),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(65)),
                                              color:dx_green
                                          ),
                                          child:  Center(

                                            child: Icon(
                                              AntDesign.addusergroup,
                                              size: 21,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Material(
                                  elevation: 12,
                                  borderRadius: BorderRadius.circular(8),
                                  clipBehavior: Clip.antiAlias,
                                  shadowColor: Colors.black12,
                                  color: dx_blue,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: double.infinity,
                                        padding: EdgeInsets.only(left: 55),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text("Deliveries", style:TextStyle(color:Colors.white)),
                                            Text(
                                              "430.9k",
                                              style: TextStyle(fontSize: 45, color:Colors.white),
                                            ),
                                            Text("218k joined today.", style:TextStyle(color:Colors.white))
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right:0,
                                        bottom: 0,
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          padding: EdgeInsets.only(left: 12, top: 18),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(65)),
                                              color:dx_yellow
                                          ),
                                          child:  Center(

                                            child: Icon(
                                              Feather.box,
                                              size: 21,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 85,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Text("Deliveries", style: TextStyle(fontSize: 25, color:Colors.white),),
                                  Text("Delivery is going on very well today.", style: TextStyle(color:Colors.white),)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(65),
                                color: dx_blue,

                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width:40,
                                      height: 40,
                                      child: MaterialButton(onPressed: (){}, child: Text("1D"), textColor: Colors.white,)),

                                  SizedBox(
                                      width:40,
                                      height: 40,
                                      child: MaterialButton(onPressed: (){}, child: Text("5D"), textColor: Colors.white,)),
                                  SizedBox(
                                      width:40,
                                      height: 40,
                                      child: MaterialButton(onPressed: (){}, child: Text("1M"), textColor: Colors.white,)),
                                  SizedBox(
                                      width:40,
                                      height: 40,
                                      child: MaterialButton(onPressed: (){}, child: Text("1Y"), textColor: Colors.white,)),
                                  SizedBox(
                                      width:40,
                                      height: 40,
                                      child: MaterialButton(onPressed: (){}, child: Text("Max"), textColor: Colors.white,)),

                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 61,),
                        Container(
                          height: 450,

                          padding: EdgeInsets.only(left: 18, right: 18, bottom: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:dx_blue,
                          ),
                          child:Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
                                child: Row(
                                  children: [
                                    Text("Delivery", style: TextStyle(color: Colors.white),),
                                    SizedBox(width: 12,),
                                    Text("Transporters", style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: LineChart(
                                    mainData()
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 35,)
                      ],
                    ),
                  ),
                  TransporterScreen(),
                  Container()
                ]

              ),
            )
            )
          ],
        ),
      ),
    );
  }
}
