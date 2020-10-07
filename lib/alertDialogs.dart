import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertDialogs extends StatelessWidget {

  const CustomAlertDialogs({
    this.title, 
    this.content, 
    this.androidActions, 
    this.iosActions
  });

  final String title;
  final String content;
  final List<Widget> androidActions;
  final List<Widget> iosActions;

  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid) {
      return AlertDialog(
        title: Text(title),
        content: context == null ? null : Text(content),
        actions: androidActions
      );
    }
    if(Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: context == null ? null : Text(content),
        actions: androidActions
      );
    }
    return null;
  }
}