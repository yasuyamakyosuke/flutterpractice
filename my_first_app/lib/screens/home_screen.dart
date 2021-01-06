import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えてください。";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Center(
                child: Text(
              _textHeader,
              style: TextStyle(fontSize: 20.0),
            )),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller:
                  _textEditingController, //TODO 入力した文字を管理するTextFieldEditing
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () => _onClick(), //ボタンを押したときの処理
                child: Text(
                  "押してね",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      //文字
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは$inputTextさん";
      //画像
      _imageWidget = Image.asset("assets/images/cloud.png");
    });
  }
}
