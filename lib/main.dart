import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/core/utils/os_util.dart';
import 'package:flutter_sample_app/presentation/root/app.dart';

void main() {
  runApp(const Main());
}

/// アプリのベース画面の出し分けを行う
/// (必ず起動時に処理が行われる)
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return OSUtil.iosOrOther(_iosApp(), _otherApp());
  }

  Widget _iosApp() {
    return const CupertinoApp(
      home: App(),
    );
  }

  Widget _otherApp() {
    return const MaterialApp(
      home: App(),
    );
  }
}
