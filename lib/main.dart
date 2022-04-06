import 'package:flutter/material.dart';
import 'package:navigator/Kisiler.dart';
import 'package:navigator/SayfaA.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ana Sayfa"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Sayfa A'ya git"),
                onPressed: () {
                  var kisi = Kisiler(
                    isim: "serkan",
                    yas: 21,
                    boy: 1.83,
                    bekarmi: false,
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SayfaA(
                                kisi: kisi,
                              )));
                },
              )
            ],
          ),
        ));
  }
}
