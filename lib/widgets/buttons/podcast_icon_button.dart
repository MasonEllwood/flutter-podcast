import 'package:flutter/material.dart';

typedef OnTap = void Function();

class PodcastIconButton extends StatelessWidget {

  final OnTap onTap;
  final String iconAssetName;
  final double imageWidth;
  final double imageHeight;

  PodcastIconButton({
    @required this.iconAssetName,
    @required this.onTap,
    // All standard icons should be exported from avocode at 4x
    // then expand the canvas of the image to get 96x96 and center the image in it
    // This yields standard sized icons at a high res designed for a width of 24x24
    // Only adjust the optional width and height if the icon size is different
    // than the standard 24x24 in avocode, you can see the intended size / padding by selecting 
    // the parent group not the asset itself
    this.imageWidth = 24,
    this.imageHeight = 24,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        return Container(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              // Adding the padding inside the button gives us 
              // a slightly larger, more user friendly tap area
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                iconAssetName,
                height: imageHeight,
                width: imageWidth,
              ),
            ),
          ),
        );
      }
    );
  }
}