import 'package:flutter/material.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BahceliHayati()
  )
);



class BahceliHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("DEVLET BAHÇELİNİN HAYATI", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
        ),
        // there is one more way to do a scroll view design by using ListView Widget
        // first you need to remove SingleChildScrollView

        // change Column widget with ListView
        body: ListView(
          children: [
            Container(
              child:Image.network("https://cdntr1.img.sputniknews.com/img/103400/68/1034006833_0:6:1200:681_1200x0_80_0_1_fbda9ab55b0c92a61f0213351d1effca.jpg",fit: BoxFit.fill,
              width : MediaQuery.of(context).size.width,
              height: 270,
            )),
            SizedBox(
            height: 40.0,
            ),
            Container(
             child: Text("Bahçelinin hayati...",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}