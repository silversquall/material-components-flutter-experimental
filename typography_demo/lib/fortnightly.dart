import 'package:flutter/material.dart';

class FortnightlyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: <Widget>[
        FruitPage(),
        ShortAppBar(),
      ],
    )));
  }
}

class ShortAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 40.0,
      child: Material(
        elevation: 4.0,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(46.0)),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Image.asset('assets/fortnightly_logo.png')
          ],
        ),
      ),
    );
  }
}

class FruitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).primaryTextTheme;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 248.0),
              child: Image.asset(
                'assets/fruits.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 17.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'US',
                        style: textTheme.overline,
                      ),
                      Text(
                        ' ¬ ',
                        style: textTheme.overline.apply(color: Theme.of(context).textTheme.display3.color),
                      ),
                      Text(
                        'CULTURE',
                        style: textTheme.overline,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Quince for Wisdom, Persimmon for Luck, Pomegranate for Love",
                    style: textTheme.display1,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "How these crazy fruits sweetened our hearts, relationships, and puffed pastries",
                    style: textTheme.body1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('assets/avatar.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 40.0,
                          width: 40.0,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'by',
                          style: textTheme.display3,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Connor Eghan',
                          style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Have you ever held a quince? It's strange; covered in a fuzz somewhere between peach skin and a spider web. And it's hard as soft lumber. You'd be forgiven for thinking it's veneered Larch-wood. But inhale the aroma and you'll instantly know you have something wonderful. Its scent can fill a room for days. And all this before you've even cooked it.\n\nPomegranates on the other hand have become almost ubiquitous. You can find its juice in any bodega, Walmart, and even some gas stations. But at what cost? The pomegranate juice craze of the aughts made \"megafarmers\" Lynda and Stewart Resnick billions. Unfortunately, it takes a lot of water to make that much pomegranate juice. Water the Resnicks get from their majority stake in the Kern Water Bank. How did one family come to hold control over water meant for the whole central valley of California? The story will shock you.",
                    style: textTheme.body2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
