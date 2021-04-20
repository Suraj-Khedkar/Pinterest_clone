import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  bool showEditButton = false;

  Widget build(BuildContext context) {
    List<String> images = [
      "Apples.png",
      "Bananas.png",
      "Cherries.png",
      "Grapes.png",
      "Oranges.png",
      "Peaches.png",
      "Plumbs.png",
      "Raspberries.png",
      "Strawberries.png",
      "fruits.gif",
      "watermelons.png",
      "pineapples.png",
      "apricots.png",
      "avacado.png",
      "blueberries.png",
      "cranberries.png",
      "guava.png",
      "kiwifruit.png",
      "fruits1.gif",
      "limes.png",
      "mandarines.png",
      "mango.png",
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 20, right: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black,
                ),
                child: Text('Home',
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
              ),
              Container(
                width: 200,
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(),
                    ),
                    icon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_outlined),
                      color: Colors.black,
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
          leading: SizedBox(
            height: 35.0,
            child: Image.asset("assets/images/pinterest.png"),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
              color: Colors.black,
              hoverColor: Colors.red,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              color: Colors.black,
              hoverColor: Colors.red,
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                /*return ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset('assets/images/' + images[index]),
                );*/

                return Container(
                  height: 200.0,
                  width: 343,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/images/' + images[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: new Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 90,
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 10, top: 10, bottom: 0, right: 10),
                        child: Column(
                          children: <Widget>[
                            new Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                images[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            new Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.save_alt,
                                      color: Colors.black,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.black,
                                    ),
                                    Icon(
                                      Icons.link,
                                      color: Colors.black,
                                    ),
                                    Icon(
                                      Icons.share,
                                      color: Colors.black,
                                    )
                                  ],
                                )),
                          ],
                        )),
                  ),
                );
                /*return new Card(
                  child: new GridTile(
                      child: Image.asset('assets/images/' + images[index])),
                );*/
                //return Image.asset('assets/images/' + images[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
