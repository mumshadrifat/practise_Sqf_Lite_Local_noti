import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  double height;
  double width;
  String text;
  Color? backgroundColour;
  Color? textColour;
  double radius;
  FontWeight? fontWeight;
  double? textSize;



  CustomButton(  {Key? key,required this.height, required this.width, required this.text, this.backgroundColour,
      this.textColour,required this.radius,this.fontWeight=FontWeight.normal,this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColour,

      ),
      child: Center(child: Text(text,style: TextStyle(color: textColour,fontWeight: fontWeight,fontSize: textSize),)),
    );
  }
}
