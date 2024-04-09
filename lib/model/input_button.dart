import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TextInputField extends StatelessWidget {
  TextEditingController Controller;
  final IconData myIcon;
  final String myLabelText;
  TextInputType myNumber;
  final myEnable;

   TextInputField({Key? key,
   required this.Controller,
   required this.myIcon,
   required this.myLabelText,
     required this.myNumber,
     this.myEnable
   });



  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: myEnable,
      keyboardType: myNumber,
      controller: Controller,
      decoration: InputDecoration(
        icon: Icon(myIcon) ,
        labelText: myLabelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
            color: Colors.grey
        ),
        ),focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
            color: Colors.grey
        ),
        ),
      ),
    );
  }
}
