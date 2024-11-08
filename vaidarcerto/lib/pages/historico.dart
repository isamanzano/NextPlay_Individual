import 'package:flutter/material.dart';
import 'package:vaidarcerto/pages/home.dart';
import 'package:vaidarcerto/shared/style.dart';

void main() {
  runApp(Historico());
}

class Historico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HistoricoScreen(), 
    );
  }
}

class HistoricoScreen extends StatefulWidget {
  @override
  _HistoricoScreenState createState() => _HistoricoScreenState();
}

class _HistoricoScreenState extends State<HistoricoScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
    );
  }
}