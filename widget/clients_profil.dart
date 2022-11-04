

import 'package:apposc/widget/user_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class personProfil extends StatelessWidget {
  final String profil;
  final String name;
  final double size;
  final String statu;
  const personProfil({super.key, required this.profil, required this.name, required this.size, required this.statu});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Column(
        children: [
          Stack(
                  children: [
                    UserIcon(img: profil, size: 80),
                    Positioned(
                      bottom: 5,
                      right: 8.8,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(7, 2, 0, 0),
                        width: 63,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        margin: const EdgeInsets.all(0),
                        child: Text(statu),
                      ),
                    ),
                  ],
                ),
                Flexible(child: Text(name,overflow: TextOverflow.ellipsis,))
        ],
      ),
          
    );
  }
}