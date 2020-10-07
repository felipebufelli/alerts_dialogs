import 'package:alerts_dialogs/alertDialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exibir AlertDialogs'),
      ),
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return CustomAlertDialogs(
                      title: 'Android Título',
                      content: 'Android Contéudo',
                      androidActions: [
                        FlatButton(
                          onPressed: () {}, 
                          child: Text('Decisão')
                        )
                      ],
                    );
                  }
                );
              },
              child: Text('Android'),
            ),
            SizedBox(height: 15,),
            RaisedButton(
              onPressed: () {
                showCupertinoDialog(
                  context: context, 
                  builder: (_) {
                    return CustomAlertDialogs(
                      title: 'iOS Título',
                      content: 'iOS Contéudo',
                      androidActions: [
                        CupertinoDialogAction(
                          onPressed: () {}, 
                          child: Text('Decisão')
                        )
                      ],
                    );
                  }
                );
              },
              child: Text('iOS'),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}