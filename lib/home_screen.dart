import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';
import 'dart:math';
import 'Notification_Api.dart';
import'package:bmi_calculator/First_time_page.dart';
import "package:bmi_calculator/Linearflow.dart";

enum notification {
  pressed,
  unpressed,
}

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void listenNotification() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String payload) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoadingScreen();
          },
        ),
      );

  List<String> Qouts = [
    'Your body can stand almost anything. It’s your mind that you have to convince.',
    'You are nothing else but what you make of yourself.',
    'Beast is what I become each and every time I step through those gym doors.',
    'My body is under construction, I am the architect of my own destiny.',
    'Sore. The most satisfying pain.',
    'Believe you can and you will.',
    'Its going to be a journey. It’s not a sprint to get in shape.',
    'Never say the sky’s the limit when there are footprints on the moon.',
    'Suffer the pain of discipline or suffer the pain of regret.',
    'Nothing truly great comes from a comfort zone.',
    'Good is not enough if better is possible',
    'I’m not there yet but damn I’m progressing.',
    'You must do what others don’t, to achieve what others won’t.',
    'Obsession is what lazy people call dedication.',
    'Learn to enjoy the pain, then your body will change.',
    'Action is the foundational key to all success.',
    'Focus On Your Goals, The Rest Is Just Noise.',
    'It’s actually pretty simple. Either you do it or You don’t.',
    'Making excuses burns zero calories per hour.',
    'It comes down to one simple thing: How bad do you want it.',
    'It always seem impossible until its done.',
    'I refuse to give up on myself.',
    'Train hard or Go home.',
    'Ability is limitless. Be more Do more.',
    'Even if you fail on your face. You’re still moving forward.',
    'If you want something you never had, you have to do something you’ve never done.',
    'Hustle for that muscle.',
    'Success starts with self discipline.',
    'No pain, No gain shut up and train.',
    'Love yourself enough to live healthy lifestyle.',
    'Your body was not made to serve others, Its meant to serve yourself.',
    'Everyday is good day to workout.',
    'Change happens at the speed of trust.',
    'If exercise was pill, It would be the most powerful medication know to humans.',
    'I am either at the gym, about go to gym, thinking about being at gym.',
    'Lets build wellness rather than treating disease.',
    'Motivation is what gets you started, habit is what keeps you going.',
    'Instead of giving up turn your struggle into power.',
    'I wear Black while workout because Its funeral for my fat.',
    'Anyone can start something, but only few can finish.',
    'Weight loss is not a physical challenge, Its a mental one.',
    'Definition of really good workout: when you hate doing it, But you love finishing it.',
    'Stay motivated!',
    'You a lot stronger than you think.',
    'Becoming strong doesn’t in gym, It starts in your head.',
    'Don’t wait for inspiration, be the inspiration.',
    'Keep calm and lift that shit.',
    'I am working on myself, for myself, by myself.',
    'Comfort is the enemy of achievement.',
    'forget being comfortable.',
    'Always remember: Good things take time.',
    'My fitness journey will be a lifelong journey.',
    'Just keep showing up when most people would quit.',
    'Stop doubting yourself, work hard, and make it happen!',
    'Being Strong Is A Mindset. Change starts from within.',
    'Earn your body Eat, Sleep, Lift, Train.',
    'Its never too late to start something new.',
    'The reason I exercise is for the quality of life I enjoy.',
    'Stop saying I wish, Start saying I will.',
    'Fitness, In my opinion, is a mental exercise more than just physical.',
    'Its slow progress but quitting won’t speed it up.',
    'Don’t call it a dreams, call it a plan.',
    'Get fit in the gym. Lose weight in the kitchen.',
    'Tomorrow I will lift harder than yesterday.',
    'It never gets easier, you just get stronger.',
    'Some people dream of success, while I wake up and train hard at it.',
    'Fitness isn’t a seasonal hobby, It’s a healthy lifestyle.',
    'Your body can stand almost anything, It’s your mind that you have to convince.',
    'All great things achievements require time.',
    'They judge you but they’re doing nothing with their lives.',
    'You will never know how strong you are until you start working.',
    'You probably forgot about your past workouts, your body didn’t.',
    'Energy & persistence conquer all things.',
    'Sore today strong tomorrow.',
    'I don’t stop when I am tired, I stop when I’m done.',
    'If it doesn’t challenge you. It doesn’t change you.',
    'Set goals and stick to it.',
    'Don’t call it dream, Call it a plan.',
    'You Will Never Understand This Lifestyle Until you try it.',
    'Fat lasts longer than flavor.',
    'Your body is the reflection of your Lifestyle.',
    'Your ambition is handicapped by laziness.',
    'I am not telling you it is going to be easy, I am telling It’s going to be worth it.',
    'Life begins at the end of your comfort zone.',
    'Your are stronger than you think.',
    'I wear black to the gym because it’s like a funeral for my fat.',
    'Take care of your body. It’s the only place you have to live.',
    'I had a goal to be the best from day one.',
    'Fight for what you want Don’t ever give up',
    'Champions believe in themselves even when no one does.',
    'I workout because this small moment of discomfort makes me feel good afterward.',
    'Get out of your comfort zone, this is where magic happens.',
    'I will win not immediately but definitely.',
    'It’s not who you are that holds you back, It’s who you think you’re not.',
    'After leg day, every step is a mission.',
    'It’s never too late to change your life.',
    'If you want more results, do less complaining.',
  ];

  notification notify = notification.unpressed;

  String qoute = ' ';
  @override
  void initState() {
    qoute = Qouts[Random().nextInt(Qouts.length)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gym2.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      notify = notification.pressed;
                    });

                    listenNotification();
                    NotificationApi.showNotfication(
                      title: 'REMEMBER!',
                      body: 'No Pain No Gain ',
                    );
                    NotificationApi.init(initSheduled: true);
                    listenNotification();
                    NotificationApi.showchudeledNotfication(
                      title: 'Come back',
                      body: 'Train Train Train!',
                    );

                    final snackBar = SnackBar(
                      content: Text(
                        'Notification is now on!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Color(0x30808080),
                    );
                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      (notify == notification.pressed)
                          ? Icons.notifications_on
                          : Icons.notifications_on_outlined,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),

            SafeArea(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  qoute,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
            ),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SafeArea(
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  highlightColor: Colors.blue.withOpacity(1),
                  splashColor: Colors.white.withOpacity(1),
                  radius: 500,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Namecollector();
                        },
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                      color:Color(0xFF40DDCB),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
