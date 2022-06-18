import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/tahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Sayı Tahmin Oyunu",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              width: 200,
                height: 200,
                child: Image.asset("Images/dice.png"),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Oyuna Başla",
                  style: TextStyle(
                  fontSize: 20,

                ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  ),

                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tahminEkrani()));

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
