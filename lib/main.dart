import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      // MyPage 위젯과 구분하기 위해서 context->ctx로 바꿔줌
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: FlatButton(
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                // 위에서 context->ctx로 바꿨으니까 여기도 바꿔줘야함
                Scaffold.of(ctx).showSnackBar(SnackBar(
                  content: Text('Hello'),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
