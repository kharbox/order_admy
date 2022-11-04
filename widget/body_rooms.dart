

import 'package:apposc/data.dart';
import 'package:apposc/models/room.dart';
import 'package:apposc/widget/Into_thisroom.dart';
import 'package:apposc/widget/user_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyPage extends StatelessWidget {
  final Room room;
  const BodyPage({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder:(_) => IntoRoom(room:room)
            ),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(room.name.toUpperCase()),
                          IconButton(onPressed: (){}, icon: const Icon(
                            CupertinoIcons.news
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                left: 35,
                                child: UserIcon(img: room.numbers[0].imag, size: 60)
                              ),
                              UserIcon(img: room.numbers[1].imag, size: 60),
                              Positioned(
                                left: 80,
                                bottom: 0,
                                child: Container(
                                  margin: const EdgeInsets.all(0),
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(0, 0),
                                        blurRadius: 0,
                                      ),
                                    ],
                                    
                                  ),
                                  
                                  child: IconButton(
                                    onPressed:(){},
                                    icon: const Icon(
                                    CupertinoIcons.add,
                                    color: Colors.black,
                                  ),
                                  )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // for(int i=0;i<5;i++)
                            ...room.numbers.map((e) => Text(
                                '${e.firstName}  ${e.lastName}'
                              )
                            ),
                            const Text('...')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:'${room.numbers.length} '
                              ),
                              const WidgetSpan(
                                child:  Icon(
                                  CupertinoIcons.person,
                                )
                              ),
                              const TextSpan( text: '  '),
                              const TextSpan(
                                text: '10 ',
                              ),
                              const WidgetSpan(child: Icon(
                                CupertinoIcons.conversation_bubble
                              ))
                            ]
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.text_justifyleft)),
                            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}