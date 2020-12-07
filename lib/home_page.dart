import 'package:flutter/material.dart';

import 'stepper/custom_stepper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> contents = [
    Text('Contenido 1'),
    Text('Contenido 2'),
    Text('Contenido 3'),
    Text('Contenido 4'),
    Text('Contenido 5'),
    Text('Contenido 6')
  ];
  int _indexCurrentStepper = 0;
  PageController _controller;
  @override
  void initState() {
    _controller = PageController(
      initialPage: _indexCurrentStepper,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STEPPER')),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomStepper(indexPage: _indexCurrentStepper, length: 6),
            SizedBox(height: 20),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                allowImplicitScrolling: false,
                pageSnapping: false,
                controller: _controller,
                children: [
                  Container(
                    color: Colors.amberAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contenido 1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contenido 2',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contenido 3',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contenido 4',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contenido 5',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blueGrey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contenido 6',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            (_indexCurrentStepper != 0)
                ? ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: 40.0,
                    height: 40.0,
                    child: FlatButton(
                      color: Colors.amber,
                      child: Icon(Icons.navigate_before),
                      onPressed: () {
                        if (_indexCurrentStepper > 0) {
                          _indexCurrentStepper--;
                          _controller.animateToPage(
                            _indexCurrentStepper,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        }
                        setState(() {});
                      },
                    ),
                  )
                : Spacer(),
            Spacer(),
            (_indexCurrentStepper != 5)
                ? ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: 40.0,
                    height: 40.0,
                    child: FlatButton(
                      color: Colors.amber,
                      child: Icon(Icons.navigate_next),
                      onPressed: () {
                        if (_indexCurrentStepper < 6 - 1) {
                          _indexCurrentStepper++;
                          _controller.animateToPage(
                            _indexCurrentStepper,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        }
                        setState(() {});
                      },
                    ),
                  )
                : Spacer(),
          ],
        ),
      ),
    );
  }
}
