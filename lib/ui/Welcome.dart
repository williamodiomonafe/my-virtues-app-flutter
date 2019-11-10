import 'package:flutter/material.dart';
import './CustomDrawer.dart';
import 'dart:math';

class Welcome extends StatefulWidget {
  @override 

  __WelcomeState createState() => __WelcomeState();
  
}

class __WelcomeState extends State<Welcome> {

  List loveVirtuesQuotes = [
    "A lover feareth nothing and no harm can come nigh him: Thou seest him chill in the fire and dry in the sea. - Bahá’u’lláh",
    
    "Deal ye one with another with the utmost love and harmony, with friendliness and fellowship... This goal excelleth every other goal, and this aspiration is the monarch of all aspirations. - Bahá’u’lláh",
    
    "Live free of love, for its very peace is anguish; Its beginning is pain, its end is death. Peace be upon him who followeth the Right Path! - Bahá’u’lláh",

    "Love is a light that never dwelleth in a heart possessed by fear. - Bahá’u’lláh",

    "Love is a veil betwixt the lover and the beloved. - Bahá’u’lláh",

    "In the Gospel it is said God is love. - ‘Abdu’l-Bahá",

    "In the world of existence there is indeed no greater power than the power of love. When the heart of man is aglow with the flame of love, he is ready to sacrifice all -- even his life. - ‘Abdu’l-Bahá",

    "Love and serve mankind just for the sake of God and not for anything else. The foundation of your love toward humanity must be spiritual faith and Divine assurance. - ‘Abdu’l-Bahá"
  ];

  Random rnd = Random();

  // var randVirtue = virtueQuotes[rnd.nextInt(virtueQuotes.length)];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: new Text('My Virtues App'),
        ),

        drawer: CustomDrawer(),

        body: Stack(
          children: <Widget>[
            Image.asset('images/bg.png',
              fit: BoxFit.fill,
              width: 500.0,
              height: 900.0,
            ),

            Center(
              child: Container(
                height: 200.0,
                margin: EdgeInsets.all(40.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 2.0,
                      blurRadius: 10.0,
                    ),
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Text('Love',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Divider(),
                    
                    Text(loveVirtuesQuotes[Random().nextInt(loveVirtuesQuotes.length)],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Text("${loveVirtuesQuotes.length}"),

                    Padding(padding: EdgeInsets.all(10.0)),

                    // Text("The Hidden Words of Baha'u'llah",
                    //   style: TextStyle(
                    //     fontSize: 11.0,
                    //     color: Colors.grey,
                    //   ),
                    //   textAlign: TextAlign.right,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
}