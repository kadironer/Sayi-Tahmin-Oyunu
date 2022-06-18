import 'package:flutter/material.dart';


class sonucEkrani extends StatefulWidget {

  bool sonuc;
  sonucEkrani({required this.sonuc});

  @override
  State<sonucEkrani> createState() => _sonucEkraniState();
}

class _sonucEkraniState extends State<sonucEkrani> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Bitti"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            widget.sonuc ? SizedBox(width: 200, height: 200, child: Image.asset("Images/smile.png")) : SizedBox(width: 200, height: 200, child: Image.asset("Images/sad.png")),
             Text(widget.sonuc ? "Oyunu Kazandın":"Oyunu Kaybettin", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.deepOrange,),),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Yeniden Başla",
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
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
