import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Merhaba Dünya'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.face,
                              size: 43,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Mahfi Eğilmez',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '@mahfiegilmez - 2h',
                                    style: TextStyle(color: Colors.grey.shade500),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text('...',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  'Kusura bakmayin ama bu kadar yanlis bir '
                                  'ekonomi politikasi ve yanlis faiz uygulamasinin '
                                  'sonunda ne olmasini bekliyordunuz? Benzinde ve '
                                  'dogalgazda indirim mi olacakti?',
                                  maxLines: 10,
                                ),
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.comment,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 3),
                                        Text('410'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.retweet,
                                          size: 20,
                                          color: Colors.grey.shade700,
                                        ),
                                        SizedBox(width: 10),
                                        Text('1.527'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.favorite_border),
                                        Text('1.527'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.bar_chart,
                                          size: 20,
                                          color: Colors.grey.shade700,
                                        ),
                                        Text('1.527'),
                                      ],
                                    ),
                                    Icon(
                                      FontAwesomeIcons.shareAlt,
                                      size: 20,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
