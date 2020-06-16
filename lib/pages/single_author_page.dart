import 'package:flutter/material.dart';
// import 'package:podcast/widgets/general/podcast_header.dart';

class PlaceholderPage extends StatefulWidget {

  @override
  _PlaceholderPageState createState() => _PlaceholderPageState();
}

class _PlaceholderPageState extends State<PlaceholderPage> {
  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   'mason',
        //   style: TextStyle(color: Colors.white),
        // ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.navigate_before,
            size: 28.0,  // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                size: 26.0,
              ),
            )
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: constraints.maxWidth * 1.4,
                      // height: 585,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Gary_VEE.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child: SafeArea(
                      //   child: Center(
                      //     child: Container(
                      //       width: 300,
                      //       height: 300,
                      //       decoration: BoxDecoration(
                      //       ),
                      //       child: Center(
                      //         child: Text(
                      //           'Stonks',
                      //         )
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                    Container(
                      width: double.infinity,
                      height: constraints.maxWidth * 1.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

