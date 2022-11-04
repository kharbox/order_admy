import 'package:apposc/Constcolors.dart';
import 'package:apposc/data.dart';
import 'package:apposc/models/room.dart';
import 'package:apposc/widget/body_rooms.dart';
import 'package:apposc/widget/clients_profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:apposc/widget/user_icon.dart';

import '../pages/home_page.dart';
import '../pages/home_postes.dart';


class IntoRoom extends StatelessWidget {
  final Room room;
  const IntoRoom({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kBackGround,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => HomePost(),
                )
              );
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.person_badge_plus,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bubble_middle_bottom,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                onPressed: (){},
                icon: UserIcon(img: thisUser.imag, size: 40),
              )
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            // color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(room.name.toUpperCase()),
                          const Icon(
                            CupertinoIcons.increase_quotelevel
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:  Text('This room folowers'),
                      ),
                    ],
                  ),
                ),
                SliverGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.6,
                  children: 
                    room.numbersall.map((e) => personProfil(
                      profil: e.imag,
                      size: 30,
                      name: '${e.lastName} ' ' ${e.firstName}',
                      statu: e.status,
                    )).toList()
                  ,
                )
              ],
            ),
          ),
            Positioned(
              bottom: 10,
              left: 10,
              // right: 100,
              child: Container(
                height: 60,
                padding: const EdgeInsets.all(5),
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(
                    CupertinoIcons.add,
                  ),
                  label: const Text('join this Room'),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    )
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
