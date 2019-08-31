import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospital_mgt/Departments/deparments.dart';
import 'package:hospital_mgt/FinanceMgt/payroll.dart';
import 'package:hospital_mgt/PatientMgt/patients.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12.0,

        padding: EdgeInsets.all(20.0),
 
        children: <Widget>[
          myItems(FontAwesomeIcons.userMd, "Doctors", 0xffed622b, () {}),
          myItems(FontAwesomeIcons.procedures, "Patients", 0xff26cb3c, Patients()),
          myItems(Icons.notifications, "Noticeboard", 0xffff3266, () {}),
          myItems(FontAwesomeIcons.hospital, "Departments", 0xff3399fe, Departments()),
          myItems(FontAwesomeIcons.fileInvoiceDollar, "Payroll", 0xfff4c83f, Payroll()),
          myItems(FontAwesomeIcons.pills, "Medicine", 0xff622F74, () {}),
          //myItems(Icons.favorite, "Followers", 0xffad61f1, () {}),
          //myItems(Icons.message, "Messages", 0xff7297ff, () {}),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 250.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 130.0),
          //StaggeredTile.extent(2, 200.0),
          //StaggeredTile.extent(2, 120.0),
        ],
      ),
    );
  }

  Material myItems(IconData icon, String heading, int color, method) {
    return Material(
        color: Colors.grey[200],
        elevation: 14.0,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(24.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => method));
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            heading,
                            style: TextStyle(
                                color: new Color(color), fontSize: 20.0),
                          ),
                        ),
                      Material(
                        color: new Color(color),
                        borderRadius: BorderRadius.circular(24.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
