import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    var ldn=5;
    var rdn=2;
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      ldn=3;
                      print('Left button got pressed');

                    });

                  },
                  child: Image.asset('images/dice$ldn.png'),
                )

            ),
            Expanded(
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        rdn=6;
                        print('Right Button got pressed');
                      });

                    },
                    child: Image.asset('images/dice$rdn.png')
                )
            )

          ],
        )
    );
  }
}
