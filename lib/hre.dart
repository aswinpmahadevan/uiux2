import 'package:flutter/material.dart';
import 'package:uiux2/thr.dart';

// ignore: camel_case_types
class hre extends StatefulWidget {
  @override
  _hreState createState() => _hreState();
}

// ignore: camel_case_types
class _hreState extends State<hre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: MaterialButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => thr(),
          )),
          child: Image.asset('images/tiger.jpg'),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class hre1 extends StatefulWidget {
  @override
  _hre1State createState() => _hre1State();
}

// ignore: camel_case_types
class _hre1State extends State<hre1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: MaterialButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => thr(),
          )),
          child: Image.asset('images/earth.jpg'),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class hre2 extends StatefulWidget {
  @override
  _hre2State createState() => _hre2State();
}

// ignore: camel_case_types
class _hre2State extends State<hre2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: MaterialButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => thr(),
          )),
          child: Image.asset('images/lion.jpg'),
        ),
      ),
    );
  }
}
