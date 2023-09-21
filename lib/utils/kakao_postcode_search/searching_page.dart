import 'package:flutter/material.dart';
import 'dart:js' as js;

class SearchingView extends StatefulWidget {
  @override
  _SearchingViewState createState() => _SearchingViewState();
}

class _SearchingViewState extends State<SearchingView> {
  @override
  void initState() {
    js.context.callMethod("aa");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("카카오 우편번호 서비스"),),
      body: Center(
        child: TextButton(
          child: Text("선택"),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}