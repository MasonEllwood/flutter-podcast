import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast/widgets/buttons/podcast_icon_button.dart';

class PodcastHeader extends StatelessWidget {

  PodcastHeader();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container( 
        color: Colors.amber,
        child: Stack(
          children: <Widget>[
            //Header Logo
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 11.0, bottom: 11.0),
            //     child: Image.asset(
            //       'assets/images/header_logo.png',
            //       fit: BoxFit.contain,
            //       height: 43,
            //     ),
            //   ),
            // ),
            //Menu Icon
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                // The button has an inherent padding of 6.0 to make the tap target a little bigger
                // we use a 14 pixel padding to get the 20 pixel padding in avocode
                padding: const EdgeInsets.all(14.0),
                child: PodcastIconButton(
                  iconAssetName: 'assets/images/drag_icon.png', 
                  onTap: (){
                    Scaffold.of(context).openEndDrawer();
                  }
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                // The button has an inherent padding of 6.0 to make the tap target a little bigger
                // we use a 14 pixel padding to get the 20 pixel padding in avocode
                padding: const EdgeInsets.all(14.0),
                child: PodcastIconButton(
                  iconAssetName: 'assets/images/drag_icon.png', 
                  onTap: (){
                    Scaffold.of(context).openEndDrawer();
                  }
                ),
              ),
            ),
            //Optional Back Button
            // if(Navigator.canPop(context))
            //   Align(
            //     alignment: Alignment.centerLeft,
            //     child: Padding(
            //       // The button has an inherent padding of 6.0 to make the tap target a little bigger
            //       // we use a 14 pixel padding to get the 20 pixel padding in avocode
            //       padding: const EdgeInsets.all(14.0),
            //       child: PodcastIconButton(
            //         iconAssetName: 'assets/images/back_arrow_icon.png', 
            //         onTap: (){
            //           Navigator.pop(context);
            //         }
            //       ),
            //     ),
            //   ),
          ],
        ),
      ),
    ); 
  }
}