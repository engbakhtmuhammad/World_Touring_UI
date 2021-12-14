import 'package:flutter/material.dart';

import 'Home.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(onPressed: (){Navigator.pop(context);} , icon: Icon(Icons.arrow_back_ios_new_rounded)),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_border_rounded),
              )
            ],
          ),
          body: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.darken),
                      image: AssetImage(
                        "Images/mainBG.jpg",
                      ),
                      fit: BoxFit.cover)),
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.055, size.height * 0.13, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("120", style: Theme.of(context).textTheme.headline1),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "SW 5KM/H",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("Anse Beach",
                            style: Theme.of(context).textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat pellentesque magna, vitae bibendum lacus suscipit facilisis. Aliquam at dapibus erat. Suspendisse nec purus vel arcu ornare ultrices in vitae turpis. Nullam arcu arcu, sodales vitae justo quis, eleifend ornare sapien.",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: CircleAvatar(
                                    foregroundColor: Colors.blueAccent[200],
                                    foregroundImage:
                                        AssetImage("Images/Profile1.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: CircleAvatar(
                                    foregroundColor: Colors.blueAccent[200],
                                    foregroundImage:
                                        AssetImage("Images/Profile2.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: CircleAvatar(
                                    foregroundColor: Colors.blueAccent[200],
                                    foregroundImage:
                                        AssetImage("Images/Profile3.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: CircleAvatar(
                                    foregroundColor: Colors.blueAccent[200],
                                    foregroundImage:
                                        AssetImage("Images/Profile4.jpg"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 25.0),
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Text(
                                "START ROUTE",
                                style: TextStyle(color: Colors.black, letterSpacing: 1, fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
