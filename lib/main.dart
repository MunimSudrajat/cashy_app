import 'package:flutter/material.dart';
import 'font_style.dart';
import 'custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Cashey"),
              backgroundColor: greenSea,
            ),
            body: SafeArea(
              child: Container(
                  margin: EdgeInsets.only(
                      left: 45.0, top: 0, right: 45.0, bottom: 0),
                  padding: EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/ic_payment.png'),
                            height: 200,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                              bottom: 5.0,
                            ),
                            child: Text("Rich Together", style: MainHeader),
                          ),
                          Text(
                            "Save your money little bit and \n we will help to be rich",
                            style: SubHeader,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  )),
            )));
  }
}
