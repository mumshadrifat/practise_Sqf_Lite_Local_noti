import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Noti {
  static Future<void> intialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize =
        new AndroidInitializationSettings('mipmap/ic_launcher');
    var iosInitialize = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        android: androidInitialize, iOS: iosInitialize);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,);
  }

  static Future showBigTextNotification(
      {var id = 0,
      required String title,
      required String body,
      var payLoad,
      required FlutterLocalNotificationsPlugin fln}) async {
    AndroidNotificationDetails androidPlatformSpecific =
        AndroidNotificationDetails("WhatEverYouWant1", "chanel_name",
            playSound: true,
          importance: Importance.max,
          priority: Priority.high,
        );
    var not=NotificationDetails(android: androidPlatformSpecific,iOS: IOSNotificationDetails());
    await fln.show(0, title, body, not);


  }
}
