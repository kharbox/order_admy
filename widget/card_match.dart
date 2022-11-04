import 'package:apposc/data.dart';
import 'package:apposc/widget/user_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardMatch extends StatelessWidget {
  const CardMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Column(
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      margin: const EdgeInsets.all(0),
                      child: const Text(
                        '2022/2/1',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic
                        ),
                      )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: UserIcon(img: thisUser.imag,size: 130,),
                        ),
                        const Text('OCS')
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('nomber: 12'),
                        Text('Place: plarean'),
                        Text('Time: 12:23'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: UserIcon(img: thisUser.imag,size: 130,),
                        ),
                        const Text('OCS')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}