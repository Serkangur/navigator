import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool> geriDonusTusu(BuildContext context) async {
    print("geri tuşu tıklandı");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("SayfaB"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                print("AppBar Geri dönüş tuşu tıklandı");
                Navigator.pop(context);
              },
            )),
        body: WillPopScope(
          onWillPop: () => geriDonusTusu(context),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Geldiği Sayfaya Dön"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Text("Ana Sayfaya Dön"),
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
                ElevatedButton(
                  child: Text("Ana Sayfaya Geçiş Yap"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AnaSayfa()));
                  },
                )
              ],
            ),
          ),
        ));
  }
}
