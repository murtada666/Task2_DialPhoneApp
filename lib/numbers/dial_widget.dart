import 'package:flutter/material.dart';

import '../contact/Contact.dart';
import '../contact/contact_card.dart';
import 'btn.dart';
import 'dial_model.dart';

class DialScreen extends StatefulWidget {
  const DialScreen({Key? key}) : super(key: key);

  @override
  State<DialScreen> createState() => _DialScreenState();
}

class _DialScreenState extends State<DialScreen> {
  String typed = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Transform.translate(
          offset: const Offset(0, 70.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 240.0,
                    child: Text(
                      typed,
                      style: const TextStyle(
                        fontSize: 35.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Contact(typed).add();
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                        Text(
                          "Add to contacts",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 450.0,
                      child: GridView.count(
                        mainAxisSpacing: 15.0,
                        crossAxisSpacing: 15.0,
                        crossAxisCount: 3,
                        // children: buttons.entries
                        //     .map((e) => Button(number: e.key, letters: e.value))
                        //     .toList(),

                        children: NumberData.buttons
                            .map(
                              (e) => MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    typed = typed + e.label;
                                  });
                                },
                                child: Button(
                                    number: e.label, letters: e.sublabel),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const ContactCard()));
                          },
                          child: Icon(Icons.groups_outlined, size: 26, color: Colors.grey.shade600,)),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Icon(Icons.call, size: 30,color: Colors.white,),
                      ),
                      TextButton(
                          onPressed: (){
                            typed = typed .substring(0, typed.length - 1);
                            setState(() {});
                          },
                          child: Icon(Icons.clear, color: Colors.grey.shade600,)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 
