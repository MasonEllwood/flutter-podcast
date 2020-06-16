import 'package:flutter/material.dart';
import 'package:podcast/widgets/general/podcast_header.dart';

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
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            return Column(
              children: <Widget> [
                PodcastHeader(),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  )
                ),
              ]
            );
          }
        )
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (BuildContext context) {
      //         return SMFRAlertDialog(
      //           titleText: 'Success!',
      //           contentText: 'Disposition(s) have been sent out.',
      //           dismissText: 'Back to Units',
      //         );   
      //       }
      //     );
      //   },
      //   child: Icon(Icons.navigation),
      //   backgroundColor: Colors.green,
      // ),
    );
  }
}
