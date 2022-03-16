import 'package:flutter/material.dart';
class RadioButton extends StatefulWidget {
String? text;
int? index;

RadioButton({ required this.text,required this.index});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selected =0;
@override
  Widget build(BuildContext context) {
    return Container(
        height:40,
        width: (selected == widget.index)? 210:170,
        child: OutlinedButton(onPressed: (){
          setState(() {
            selected = widget.index!;
          });
        },
          child: Text(widget.text!,
            style: TextStyle(
              color: (selected == widget.index)? Colors.green:Colors.white38,
              fontSize: (selected == widget.index)? 30:20,

            ),),
          style: OutlinedButton.styleFrom(
            animationDuration: Duration(seconds: 4),
            padding: EdgeInsets.all(0.8),
            side: BorderSide(color: (selected == widget.index)? Colors.green:Colors.white38),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5)),
          ),
        ),
      );
    }
}

