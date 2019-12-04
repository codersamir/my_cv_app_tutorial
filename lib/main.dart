import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My CV App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/samir.jpg"),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Samir Phuyal",
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "App Developer",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Hello, I am Samir Phuyal. I am a web plus app developer. I am currently running an ICT Gyan Youtube channel where I make nepali programming tutorials.",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "NotoSans",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Social Links",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          launch("https://www.facebook.com/codersamir");
                        },
                        color: Colors.blue,
                        icon: Icon(FontAwesomeIcons.facebook),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://www.twitter.com/codersamir");
                        },
                        color: Colors.blueAccent,
                        icon: Icon(FontAwesomeIcons.twitter),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://www.instagram.com/codersamir");
                        },
                        color: Colors.red,
                        icon: Icon(FontAwesomeIcons.instagram),
                      ),
                      IconButton(
                        onPressed: () {
                          launch(
                              "https://np.linkedin.com/in/samir-phuyal-3606a6156");
                        },
                        color: Colors.blueGrey,
                        icon: Icon(FontAwesomeIcons.linkedin),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Skills",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://insanelab.com/wp-content/uploads/2019/01/web-development-trends-2018-header-1.jpg"),
                  ),
                  title: Text("Web Development"),
                  subtitle: Text("HTML, CSS, JavaScript"),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://fenzodigital.com/wp-content/uploads/2018/08/Mobile-App.png"),
                  ),
                  title: Text("App Development"),
                  subtitle: Text("Dart and Flutter"),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
