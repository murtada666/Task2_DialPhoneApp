
import 'package:dial/main.dart';
import 'package:dial/numbers/dial_model.dart';
import 'package:flutter/material.dart';


class ButtonWidget extends StatefulWidget {
   ButtonWidget({Key? key, required this.data,}) : super(key: key);

  final MyButtons data;


  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        setState(() {});
      },
      child: Column(
        children: [
          //inside the button
          Text(
            widget.data.MyNumber, style: const TextStyle(
            fontSize: 25,
            color: Colors.black54,
          ),),
          Text(widget.data.MyLetters, style: const TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),),

        ],
      ),
    );
  }
}