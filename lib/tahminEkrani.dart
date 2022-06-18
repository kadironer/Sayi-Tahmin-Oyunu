import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/sonucEkrani.dart';

class tahminEkrani extends StatefulWidget {
  const tahminEkrani({Key? key}) : super(key: key);

  @override
  State<tahminEkrani> createState() => _tahminEkraniState();
}

class _tahminEkraniState extends State<tahminEkrani> {

  var tfConrol=TextEditingController();
  int rastgeleSayi=0;
  int kalanHak=5;
  String ipucu="";

  @override
  void initState() {
    super.initState();
    rastgeleSayi=Random().nextInt(101);
    print("Rastgele Sayı:$rastgeleSayi");
  }

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
            Text("Kalan Hak:$kalanHak",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange,
              ),
            ),
            Text("İpucu:$ipucu",
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
                controller: tfConrol,
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
                  setState(() {
                    kalanHak=kalanHak-1;
                  });

                  int tahmin=int.parse(tfConrol.text);
                  if(tahmin==rastgeleSayi){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sonucEkrani(sonuc:true,)));
                    return;
                  }
                  if(tahmin > rastgeleSayi){
                    setState(() {
                      ipucu="Tahmini Azalt";
                    });
                  }
                  if(tahmin < rastgeleSayi){
                    setState(() {
                      ipucu="Tahmini Arttır";
                    });
                  }
                  if(kalanHak==0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sonucEkrani(sonuc: false,)));
                  }

                  tfConrol.text="";
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
