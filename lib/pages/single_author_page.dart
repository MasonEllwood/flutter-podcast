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
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.navigate_before,
            size: 28.0,
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Gary_VEE.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                    Container(
                      height: constraints.maxWidth * 1.4,
                      child: Column(
                        children: <Widget>[
                          Spacer(
                            flex: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 140.0, 
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: constraints.maxHeight * 1.4,
                            // alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '1hr 23m',
                                    textAlign: TextAlign.left,
                                    // add font style
                                  ),
                                  Text(
                                    'the\ngaryvee\nshow',
                                    textAlign: TextAlign.left,
                                    // add font style
                                    // style: GMGTextStyles.chunkWhite30px,
                                  ),
                                  Text(
                                    '#PodSessions #Entrepreneurship',
                                    textAlign: TextAlign.left,
                                    // add font style
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/icon_background_gradient.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                    child: Icon(
                                      Icons.playlist_add,
                                      size: 25.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                    child: Icon(
                                      Icons.notifications_active,
                                      size: 25.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                    child: Icon(
                                      Icons.share,
                                      size: 25.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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

