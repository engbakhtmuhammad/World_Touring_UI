import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double xOffset = 0;
  double yOffset = 0;
  double scale = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scale),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40.0 : 0),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text('Home', style: Theme.of(context).textTheme.headline3),
              leading: isDrawerOpen
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scale = 1;
                          isDrawerOpen = false;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      ))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scale = 0.6;
                          isDrawerOpen = true;
                        });
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      )),
              actions: [
                IconButton(
                    onPressed: () {
                      print("SearchButton");
                    },
                    icon: Icon(
                      Icons.search_outlined,
                      color: Colors.black,
                      size: 30,
                    ))
              ],
            ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Find \nBeautiful World",
                      style: Theme.of(context).textTheme.headline4),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            height: size.height * 0.30,
                            width: size.width * 0.89,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                      width: size.width * 0.35,
                                      height: size.height * 0.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "Images/mainBG.jpg"),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Alaska",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                      width: size.width * 0.35,
                                      height: size.height * 0.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "Images/mainBG.jpg"),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Marari",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                      width: size.width * 0.35,
                                      height: size.height * 0.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "Images/mainBG.jpg"),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Goxarana",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Discover",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: size.width * 0.8,
                                  height: size.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey[300]),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.15, top: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kappl",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              "Contrary to the popular belief, Lorem is simply a random text",
                                              style: TextStyle(
                                                color: Colors.black87,
                                              ))
                                        ]),
                                  )),
                            ],
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: size.height * 0.005),
                              child: Container(
                                width: size.width * 0.2,
                                height: size.height * 0.11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.red[300],
                                    image: DecorationImage(
                                        image: AssetImage('Images/mainBG.jpg'),
                                        fit: BoxFit.cover)),
                              )),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: size.width * 0.8,
                                  height: size.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey[300]),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.15, top: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kappl",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              "Contrary to the popular belief, Lorem is simply a random text",
                                              style: TextStyle(
                                                color: Colors.black87,
                                              ))
                                        ]),
                                  )),
                            ],
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: size.height * 0.005),
                              child: Container(
                                width: size.width * 0.2,
                                height: size.height * 0.11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.red[300],
                                    image: DecorationImage(
                                        image: AssetImage('Images/mainBG.jpg'),
                                        fit: BoxFit.cover)),
                              )),
                        ]),
                        SizedBox(height: 15),
                        Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: size.width * 0.8,
                                  height: size.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey[300]),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.15, top: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kappl",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              "Contrary to the popular belief, Lorem is simply a random text",
                                              style: TextStyle(
                                                color: Colors.black87,
                                              ))
                                        ]),
                                  )),
                            ],
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: size.height * 0.005),
                              child: Container(
                                width: size.width * 0.2,
                                height: size.height * 0.11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.red[300],
                                    image: DecorationImage(
                                        image: AssetImage('Images/mainBG.jpg'),
                                        fit: BoxFit.cover)),
                              )),
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Row(children: [
              Container(
                height: 65,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 6,
                        blurRadius: 8,
                        offset: Offset(0, -3),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home_rounded,size: 40,color: Colors.lightBlue,),
                    Icon(Icons.beach_access_rounded,size: 35,),
                    Icon(Icons.favorite_border_rounded,size: 35,),
                    Icon(Icons.person_outline,size: 35,),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
