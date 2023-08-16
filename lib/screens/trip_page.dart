import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  late PageController _pageController;

  void _onScroll() {
    print('sss');
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController
        .dispose(); // Dispose the PageController to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _pageController, children: <Widget>[
        makePage(image: 'assets/images/one.jpg'),
        makePage(image: 'assets/images/two.jpg'),
        makePage(image: 'assets/images/three.jpg'),
      ]),
    );
  }

  Widget makePage({image}) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
                )
              ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.3, 0.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2)
                ]
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text('1', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      Text('/4', style: TextStyle(color: Colors.white, fontSize: 15),)
                    ],
                  ),
                  Expanded(
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('USA', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Icon(Icons.star, color: Colors.grey, size: 15,),
                            ),
                            Text('4.0', style: TextStyle(color: Colors.white70),),
                            Text('(2300)', style: TextStyle(color: Colors.white38, fontSize: 12),),

                          ],
                        )
                      ],
                    )
                  )
                ]
              ),
            ),
        ),
      );
  }
}
