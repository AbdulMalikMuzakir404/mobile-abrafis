import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            // peta utama
            Container(
              width: 330,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                // tampilan ucapan dan tanggal
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
                ),
                // tampilan peta kedua
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
                )
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                // jam masuk
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
              child:Column(
                children: [
                  Row( children: [Icon(Icons.abc_rounded), Text("Jam Masuk")]),
                  Row(children: [ SizedBox(width: 15,), Text("07.00 WIB")],)
                ]
              )
                ),
                // jam keluar
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
              child:Column(
                children: [
                  Row( children: [Icon(Icons.abc_rounded), Text("Jam Keluar")]),
                  Row(children: [ SizedBox(width: 15,), Text("16.00 WIB")],)
                ]
              )
                )
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                // hadir
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Hadir", style: TextStyle(fontSize: 20)),
                    Text("0" , style: TextStyle(fontSize: 26)),
                    Text("Kali", style: TextStyle(fontSize: 20)),
                    Text("selama bulan januari"),
                    ElevatedButton(
                  onPressed: () {
                  },
                  child: Text("Hadir"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(60, 20),
                      primary: Color(0xff2F5D62),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                          
            
                  ]
                )
                ),
                // sakit
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Hadir", style: TextStyle(fontSize: 20)),
                    Text("0" , style: TextStyle(fontSize: 26)),
                    Text("Kali", style: TextStyle(fontSize: 20)),
                    Text("selama bulan januari"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ElevatedButton(
                  onPressed: () {
                  },
                  child: Text("Sakit"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(60, 20),
                      primary: Color(0xff2F5D62),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                          ElevatedButton(
                  onPressed: () {
                  },
                  child: Text("PDF"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(60, 20),
                      primary: Color(0xff2F5D62),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                          ],)
            
                  ]
                )
                )
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                // izin
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
                
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Izin", style: TextStyle(fontSize: 20)),
                    Text("0" , style: TextStyle(fontSize: 26)),
                    Text("Kali", style: TextStyle(fontSize: 20)),
                    Text("selama bulan januari"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      ElevatedButton(
                  onPressed: () {
                  },
                  child: Text("Izin"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(60, 20),
                      primary: Color(0xff2F5D62),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                          ElevatedButton(
                  onPressed: () {
                  },
                  child: Text("PDF"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(60, 20),
                      primary: Color(0xff2F5D62),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                          ],)
            
                  ]
                )
                ),
                // alfa
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey,
              ),
                )
              ]
            ),
          ]),
        ));
  }
}

