

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserIcon extends StatelessWidget {
  final String img;
  final double size;
  const UserIcon({super.key, required this.img, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 -size/10),
      child: Image(
        width: size,
        height: size,
        fit: BoxFit.cover,
        image: AssetImage(
          img,
        ),
      ),
    );
  }
}