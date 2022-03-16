import 'package:flutter/material.dart';
class DropMenu extends StatefulWidget {
  @override
  State<DropMenu> createState() => _DropMenuState();
  List<String> itemsW = [' '];
  DropMenu({required this.itemsW});
}

class _DropMenuState extends State<DropMenu> {
  var selectedValue = ' ';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      child: DropdownButton(
        items: widget.itemsW.map((e) => DropdownMenuItem(child: Text('${e}'), value: e,)).toList(),
        onChanged: (val){
          setState(() {
            selectedValue = val.toString();
          });
        },
        value: selectedValue ,
      ),
    );
  }
}
