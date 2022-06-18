import 'package:flutter/material.dart';

class tahminEkrani extends StatefulWidget {
  const tahminEkrani({Key? key}) : super(key: key);

  @override
  State<tahminEkrani> createState() => _tahminEkraniState();
}

class _tahminEkraniState extends State<tahminEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Et"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

          ],
        ),
      ),

    );
  }
}
