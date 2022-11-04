import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Postes extends StatelessWidget {
  const Postes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Card(
        elevation: 0,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('nameRoom'),
                        Icon(
                          CupertinoIcons.rosette
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: const Text("this post it's just for tisting do no care about it am jast tring th write som words for see if it works or not a mean tring to fix the width and the height to make it look like right",
                      // style: (
                      //   // TextAlign.center
                      // ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: const Text('name writer',style: TextStyle(fontSize: 18),)),
                        Container(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: const Text('status',style: TextStyle(fontSize: 18),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          CupertinoIcons.reply,
                        ),
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          CupertinoIcons.heart
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
    );
  }
}