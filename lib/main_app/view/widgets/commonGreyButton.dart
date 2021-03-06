import 'package:flutter/material.dart';

class CommonGreyButton extends StatelessWidget {
  final double height;
  final double width;
  final Function onTap;
  final IconData icon;
  final String label;

  CommonGreyButton({
    this.width,
    this.onTap,
    this.height,
    this.label,
    this.icon
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if(icon!=null)Icon(icon, size: 25,),
              if(icon!=null)SizedBox(width: 7,),
              Text(label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
