// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:songpage/neo_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),

                //back arrow button , playlist text, menu button

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: NeoBox(
                          child: Icon(
                            Icons.arrow_back_sharp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "P L A Y L I S T",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: NeoBox(
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),

                //cover art of music player

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: NeoBox(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image(
                              image: AssetImage(
                                "assets/cover.jpg",
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      "Emiwat Bantai",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      "Jump Kar",
                                      style: TextStyle(
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: NeoBox(
                                  child: Icon(
                                    Icons.favorite,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // seek bar or progress bar ,start time and end time

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: NeoBox(
                    child: LinearPercentIndicator(
                      lineHeight: 8,
                      percent: 0.5,
                      backgroundColor: Colors.transparent,
                      progressColor: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //start time and end time
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('00:00'),
                      Text("4:06"),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeoBox(
                        child: Icon(Icons.shuffle),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: SizedBox(
                          height: 60,
                        width: 60,
                        child: NeoBox(
                          child: Icon(Icons.repeat),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
                //backword play ,play pause ,forward play ,shuffle , repeat

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                            height: 60,
                          width: 60,
                          child: NeoBox(
                            child: Icon(Icons.arrow_back_ios_rounded),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                              height: 60,
                            width: 60,
                            child: NeoBox(
                              child: Icon(Icons.play_arrow,size: 50,),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                            height: 60,
                          width: 60,
                          child: NeoBox(
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
