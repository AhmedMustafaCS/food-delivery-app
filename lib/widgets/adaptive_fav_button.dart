import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFavButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double iconSize;
  const AdaptiveFavButton({super.key, required this.onPressed, required this.title, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(CupertinoIcons.heart_fill, color: Theme.of(context).primaryColor, size: iconSize),
            const SizedBox(width: 6.0),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.deepOrange),
            )
          ],
        ),
      );
    } else {
      return TextButton.icon(
        icon: Icon(Icons.favorite, color: Theme.of(context).primaryColor, size: iconSize),
        onPressed: onPressed,
        label: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).primaryColor),
        ),
      );
    }
  }
}
