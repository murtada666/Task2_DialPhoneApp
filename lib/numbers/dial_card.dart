import 'package:dial/numbers/dial_widget.dart';
import 'package:flutter/material.dart';

import 'dial_model.dart';


class Dial extends StatefulWidget {
  const Dial({Key? key,}) : super(key: key);

  @override
  State<Dial> createState() => _DialState();
}

class _DialState extends State<Dial> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        physics: NeverScrollableScrollPhysics(),
        children: MyButtons.button.map((e) => GestureDetector(
            onTap: (){
              MyButtons.selectedNum = e.MyNumber;
              print(e.MyNumber);
              setState(() {});
            },
            child: ButtonWidget(data: e)), ).toList(),
    );
  }
}





















