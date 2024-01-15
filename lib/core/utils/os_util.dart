import 'dart:io';

class OSUtil {
  // iOS/OtherでT型変数を出し分ける
  static T iosOrOther<T>(T ios, T other) {
    final isIOS = Platform.isIOS;
    return isIOS ? ios : other;
  }
}
