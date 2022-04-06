import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/Kisiler.dart';
import 'package:navigator/SayfaB.dart';

class SayfaA extends StatefulWidget {
  Kisiler kisi;

  SayfaA({required this.kisi});

  // bu sayfada nereye hangi bilgi yazdığımızı göstercek {} içine aldık ya
  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SayfaA"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Sayfaya B'ye git"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SayfaB()));
                },
              ),
              Text("İsim : ${widget.kisi.isim}"),
              Text("İsim : ${widget.kisi.yas}"),
              Text("İsim : ${widget.kisi.boy}"),
              Text("İsim : ${widget.kisi.bekarmi}")
            ],
          ),
        ));
  }
}
