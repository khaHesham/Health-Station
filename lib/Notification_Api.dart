import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import'package:rxdart/rxdart.dart';
import'package:timezone/timezone.dart' as tz;
import'package:timezone/data/latest.dart' as tz;
import'package:flutter_native_timezone/flutter_native_timezone.dart';

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications=BehaviorSubject<String>();


  static Future _notificationDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
       channelDescription: 'channel description',
        importance: Importance.max,

      ),

      iOS: IOSNotificationDetails(),

    );
  }

  static Future init({bool initSheduled = false})async
  {
    final android=AndroidInitializationSettings('@mipmap/ic_launcher');
    final ios=IOSInitializationSettings();
    final settings=InitializationSettings(android:android,iOS: ios);

    final details=await _notifications.getNotificationAppLaunchDetails();
    if(details != null && details.didNotificationLaunchApp){
      onNotifications.add(details.payload);
    }

    await _notifications.initialize(
      settings,
      onSelectNotification: (payload) async{
        onNotifications.add(payload);
      },
    );
    if(initSheduled)
      {
        tz.initializeTimeZones();
        final locationName=await FlutterNativeTimezone.getLocalTimezone();
        tz.setLocalLocation(tz.getLocation(locationName));

      }
  }


  static Future showNotfication({
    int id = 0,
    String title,
    String body,
    String payload,
  }) async {
    _notifications.show(
      id,
      title,
      body,
      await _notificationDetails(),
      payload: payload,
    );
  }


  static Future showchudeledNotfication({
    int id = 0,
    String title,
    String body,
    String payload,

  }) async {
    _notifications.zonedSchedule(
      id,
      title,
      body,
      _schuduleDaily(Time(9,0,0)),

      await _notificationDetails(),
      payload: payload,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static tz.TZDateTime _schuduleDaily(Time time)
  {
    final now=tz.TZDateTime.now(tz.local);
    final scheduledDate=tz.TZDateTime(tz.local,now.year,now.month,now.day,time.hour,time.minute,time.second);
    return scheduledDate.isBefore(now)
        ? scheduledDate.add(Duration(days:1))
        :scheduledDate;

  }

}
