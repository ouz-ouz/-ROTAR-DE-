import 'package:flutter/material.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:TurkesHayati()
  )
);



class TurkesHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("BAŞBUĞUN HAYATI", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
        ),
        // there is one more way to do a scroll view design by using ListView Widget
        // first you need to remove SingleChildScrollView

        // change Column widget with ListView
        body: ListView(
          children: [
            Container(
              child:Image.network("https://cdn.yenicaggazetesi.com.tr/news/343275.jpg",fit: BoxFit.fill,
              width : MediaQuery.of(context).size.width,
              height: 200,
            )),
            SizedBox(
            height: 30.0,
            ),
            Container(
             child: Text("vur ulan köpek dölü",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}