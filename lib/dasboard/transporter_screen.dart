import 'package:fastrack/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransporterScreen extends StatefulWidget {
  const TransporterScreen({Key? key}) : super(key: key);

  @override
  _TransporterScreenState createState() => _TransporterScreenState();
}

class _TransporterScreenState extends State<TransporterScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         backgroundColor:Color(0xFF01091D),
        appBar: AppBar(
          backgroundColor:Color(0xFF01091D),
          elevation: 0.0,
          title: Text('Transporters'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child:
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              indicatorColor: Colors.amberAccent,
              labelStyle: GoogleFonts.dosis(),
              tabs: [
                Tab(text: "All",),
                Tab(text: "Vehicle",),
              ],
            ),
          ),
        ),
        ),

        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
