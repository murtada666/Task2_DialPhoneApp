
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../numbers/dial_widget.dart';
import 'Contact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor:  Colors.white,
        elevation: 0,
        toolbarHeight: 20,
      ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(onPressed:(){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DialScreen()));
                },
                  child: const Icon(Icons.arrow_back_ios, color: Colors.black,), ),
                 SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Contacts", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    Row(
                      children:const [
                        Icon(Icons.crop_square),
                        Icon(Icons.splitscreen),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 500,
                  child: Container(
                    color: Colors.white,
                    height: 630,
                    child: ListView(
                      children: Contact.contacts.map((e) => Container(
                        margin: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300
                              ),
                              child:
                              const Icon(Icons.person, size: 22, color: Colors.white,),
                            ),
                            Padding(padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.name, style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text(e.phone!, style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade500
                                  ),),
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.call, color: Colors.green, size: 30,)
                          ],
                        ),
                      )).toList(),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 650,
                left: 120,
                child:
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(
                      offset: Offset(0,8),
                      blurRadius: 4,
                      color: Colors.grey.withOpacity(0.9)
                    ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.groups_outlined, color: Colors.grey.withOpacity(0.7),),
                      Icon(Icons.settings, color: Colors.grey.withOpacity(0.7),)
                    ],
                  ),
                ),
            )
          ],
        ),
      ),
      
    );
  }
}
