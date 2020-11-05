import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mychallange/screens/bin2dec/converter.dart';
import 'package:mychallange/screens/bin2dec/widgets/bin_conv_button_bar.dart';
import 'package:mychallange/screens/bin2dec/widgets/bin_input.dart';

TextEditingController _binaryController = TextEditingController();
TextEditingController _decimalController = TextEditingController();

class BinToDec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bin2dec',
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          title: Text('bin2dec'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                BinInputText(
                  controller: _binaryController,
                ),
                BinInputText(
                  controller: _decimalController,
                ),
                BinButtonBar(
                  controller: _binaryController,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.indigoAccent,
                    elevation: 5,
                    onPressed: () {
                      print(_binaryController.text);
                      _decimalController.text = Converter()
                          .binToDec(_binaryController.text)
                          .toString();
                    },
                    child: Text('Convert!'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
