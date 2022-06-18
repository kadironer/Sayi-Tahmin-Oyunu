import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/sonucEkrani.dart';

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
            Text("Kalan Hak:",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange,
              ),
            ),
            Text("İpucu:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 250,
              height: 60,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: ("Bir sayı giriniz!"),
                  labelText: "Tahmininiz",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Devam Et",
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sonucEkrani()));

                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
