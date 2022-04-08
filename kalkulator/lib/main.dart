import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kalkulator/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kalkulator',
      theme: ThemeData(),
      home: CalculatorPage(),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController angka = new TextEditingController();
  TextEditingController output = new TextEditingController();

  int result = 0, angka1 = 0, angka2 = 0;
  void plus() {
    print(angka.text);
    angka1 = int.parse(angka.text);
    result = result + angka1;
    angka1 = 0;
    angka.text = "";
    print(result);
  }

  void minus() {
    angka1 = int.parse(angka.text);
    result = result - angka1;
    angka1 = 0;
    print(result);
  }

  void multiple() {
    angka1 = int.parse(angka.text);
    result = 1 * angka1;
    angka1 = 0;
    print(result);
  }

  void divided() {
    angka1 = int.parse(angka.text);
    result = (angka1 / angka2) as int;
    angka1 = 0;
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: angka,
          ),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: output,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    plus();
                  },
                  child: Text("+")),
              FlatButton(
                  onPressed: () {
                    minus();
                  },
                  child: Text("-")),
              FlatButton(
                  onPressed: () {
                    divided();
                  },
                  child: Text("/")),
              FlatButton(
                  onPressed: () {
                    multiple();
                  },
                  child: Text("x")),
            ],
          )
        ],
      ),
    );
  }
}
//input angka kemudian muncul pada output1 
//simpan input angka ke variabel angka1
//input operasi jika + output + 
//result (0) + angka1 simpan result
//menginput angka selanjutnya ( angka1 update) dan lakukan operasi + dalam method +
//simpan pada variabel result(sudah operasi)
//set anga1 dan angak2 set 0
//jika opersi lagi, angka1 dan input angka2 
//klik = untuk output result ke output2, result set 0
