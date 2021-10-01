import 'package:flutter/material.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/button2.dart';
import 'package:salon_app/widgets/image_card.dart';
import 'package:salon_app/widgets/specialist_column.dart';
import 'package:salon_app/widgets/button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BuildContext get modalContext => modalContext;

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.short_text, color: Colors.black87),
              onPressed: () {}),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(),
              margin: EdgeInsets.only(right: 15, top: 15),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  "images/TMAN.jpg",
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: screen_size_width,
          height: screen_size_height,
          padding: EdgeInsets.only(top:16, left:16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    height: screen_size_height * .2,
                    width: screen_size_width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ImageCard(cardImg: "images/savetime.gif"),
                        SizedBox(width: 10),
                        ImageCard(cardImg: "images/braid3.jpg"),
                      ],
                    )),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    MyButton(btnText: "Book A Salon Slot",
                        onpressed: () => Navigator.pushNamed(context, UIData.bookPageRoute)),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Text("Featured Salons",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                      FlatButton(
                          onPressed: (){},
                          child: Text("Go To My Bookings",
                              style: TextStyle(color: Colors.black54)))
                    ]),
                SizedBox(height: 6),
                Container(
                    height: 230,
                    width: screen_size_width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SpecialistColumn(
                            specImg: "images/betty.jpg", specName: "Betty's Nails 4.8"),
                        SizedBox(width: 12),
                        SpecialistColumn(
                            specImg: "images/urbanzulu.png", specName: "Urban Zulu"),
                        SizedBox(width: 12),
                        SpecialistColumn(
                            specImg: "images/legends.png",
                            specName: "Legend Barbers"),
                      ],
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    MyButton2(btnText: "How does it work?",
                        onpressed: (){bottomSheet();})
                  ],
                ),
                SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
  void bottomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
          height: 200,

          color: UIData.lightColor,
          child: Center(
          child: Text(
            'How does it work vele??? 😄😄😄',
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0.4,
                fontWeight: FontWeight.w600),
          )));
    });
  }
}
