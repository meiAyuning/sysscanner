import 'package:flutter/material.dart';
import 'package:sysscanner/splashscreen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E - Absensi Siswa')),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplashScreenPage()),
                      );
                    },
                    child: Container(
                      child: Image.asset('images/barcode.png'),
                      height: 150,
                      width: 300,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:5),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 0, 48, 9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Text(
                            'Absensi Kehadiran',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 44, 131, 48),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: Container(
                              child: Image.asset('images/qrcode.jpg'),
                              height: 200,
                              width: 180,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 0, 48, 9)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Text(
                                    'Absensi Pulang',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 44, 131, 48),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
