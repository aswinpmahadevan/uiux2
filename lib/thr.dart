import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:number_slide_animation/number_slide_animation_widget.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:uiux2/hre.dart';
import 'package:wave_drawer/wave_drawer.dart';
import 'package:image_auto_slider/image_auto_slider.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:dotted_line/dotted_line.dart';

// ignore: camel_case_types
class thr extends StatefulWidget {
  @override
  _thrState createState() => _thrState();
}

final List<Feature> features = [
  Feature(
    title: "Drink Water",
    color: Colors.blue,
    data: [0.2, 0.8, 0.4, 0.7, 0.6],
  ),
  Feature(
    title: "Exercise",
    color: Colors.pink,
    data: [1, 0.8, 0.6, 0.7, 0.3],
  ),
  Feature(
    title: "Study",
    color: Colors.cyan,
    data: [0.5, 0.4, 0.85, 0.4, 0.7],
  ),
  Feature(
    title: "Water Plants",
    color: Colors.green,
    data: [0.6, 0.2, 0, 0.1, 1],
  ),
  Feature(
    title: "Grocery Shopping",
    color: Colors.amber,
    data: [0.25, 1, 0.3, 0.8, 0.6],
  ),
];

// ignore: camel_case_types
class _thrState extends State<thr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
      ),
      drawer: WaveDrawer(
        backgroundColor: Colors.blue,
        boundaryColor: Colors.blue,
        boundaryWidth: 2.0,
        child: Shimmer(
          duration: Duration(seconds: 5), //Default value
          color: Colors.white, //Default value
          enabled: true, //Default value
          direction: ShimmerDirection.fromLTRB(),
          child: ListView(
            children: <Widget>[
              NumberSlideAnimation(
                number: "12345678987654321",
                duration: const Duration(seconds: 5),
                curve: Curves.bounceIn,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              LoadingFadingLine.circle(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingBumpingLine.square(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingFadingLine.circle(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingFadingLine.square(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingBouncingLine.circle(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingBouncingLine.square(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingJumpingLine.circle(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingJumpingLine.square(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingFlipping.circle(
                size: 30,
                borderColor: Colors.white,
              ),
              LoadingFlipping.square(
                size: 30,
                borderColor: Colors.white,
              ),
              LoadingRotating.square(
                size: 30,
                borderColor: Colors.white,
              ),
              LoadingFilling.square(
                size: 30,
                borderColor: Colors.green,
                fillingColor: Colors.white70,
              ),
              LoadingDoubleFlipping.circle(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingDoubleFlipping.square(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingBouncingGrid.circle(
                size: 30,
                backgroundColor: Colors.white,
              ),
              LoadingBouncingGrid.square(
                size: 30,
                backgroundColor: Colors.white,
              ),
              ListTile(
                title: Text(
                  "1data",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre(),
                )),
              ),
              ListTile(
                title: Text(
                  "2data",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre(),
                )),
              ),
              ListTile(
                title: Text(
                  "3data",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre(),
                )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoadingBumpingLine.square(
              size: 300,
              backgroundColor: Colors.black45,
            ),
            ImageAutoSlider(
              assetImages: [
                AssetImage('images/1.jpg'),
                AssetImage('images/2.jpg'),
                AssetImage('images/3.jpg'),
                AssetImage('images/4.jpg'),
                AssetImage('images/lion.jpg'),
                AssetImage('images/tiger.jpg'),
                AssetImage('images/earth.jpg'),
              ],
              imageHeight: 360,
              boxFit: BoxFit.fitHeight,
              slideMilliseconds: 700,
              durationSecond: 2,
            ),
            FAProgressBar(
              currentValue: 80,
              displayText: '%',
            ),
            new SizedBox(
              height: 350,
              width: 500,
              child: MaterialButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre(),
                )),
                child: Image.asset('images/1.jpg'),
              ),
            ),
            new SizedBox(
              height: 350,
              width: 500,
              child: MaterialButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre1(),
                )),
                child: Image.asset('images/2.jpg'),
              ),
            ),
            SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget: topCardWidget(),
              bottomCardWidget: bottomCardWidget(),
            ),
            new SizedBox(
              height: 30,
            ),
            new SizedBox(
              height: 350,
              width: 500,
              child: MaterialButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre2(),
                )),
                child: Image.asset('images/3.jpg'),
              ),
            ),
            DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 3.0,
              dashLength: 4.0,
              dashColor: Colors.black54,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 3.0,
            ),
            LineGraph(
              features: features,
              size: Size(500, 400),
              labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
              labelY: ['20%', '40%', '60%', '80%', '100%'],
              showDescription: true,
              graphColor: Colors.black,
            ),
            DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            new SizedBox(
              height: 350,
              width: 500,
              child: MaterialButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => hre2(),
                )),
                child: Image.asset('images/4.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget topCardWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage('images/tiger.jpg')),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
      SizedBox(height: 15),
      Text(
        'The Tiger',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      SizedBox(height: 15),
      Text(
        'He asks, what your name is. But!',
        style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 12,
            fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 10),
    ],
  );
}

// This widget will be passed as Bottom Card's Widget.
Widget bottomCardWidget() {
  return Text(
    'It doesn\'t matter \nwhat your name is.',
    style: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    textAlign: TextAlign.center,
  );
}
