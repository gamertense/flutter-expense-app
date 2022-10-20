import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function handler;

  const AdaptiveButton(this.text, this.handler, {super.key});

  @override
  Widget build(BuildContext context) {
    const buttonStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );

    return Platform.isIOS
        ? CupertinoButton.filled(
            onPressed: () => handler(),
            child: Text(
              text,
              style: buttonStyle,
            ),
          )
        : ElevatedButton(
            onPressed: () => handler(),
            child: Text(
              text,
              style: buttonStyle,
            ),
          );
  }
}
