import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double marginHorizontal;
    double imageWidth;
    double imageHeight;
    double fontSize;
    double headingFontSize;

    if (screenWidth > 1200) {
      marginHorizontal = 100.0;
      imageWidth = 300.0;
      imageHeight = 400.0;
      fontSize = 20.0;
      headingFontSize = 32.0;
    } else if (screenWidth > 800) {
      marginHorizontal = 60.0;
      imageWidth = 200.0;
      imageHeight = 300.0;
      fontSize = 18.0;
      headingFontSize = 28.0;
    } else {
      marginHorizontal = 20.0;
      imageHeight = 250.0;
      imageWidth = 150.0;
      fontSize = 16.0;
      headingFontSize = 24.0;
    }

    return Container(
      height: screenHeight,
      padding: EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 50),
              child: Image.asset(
                'assets/images/DSC_5440.jpg',
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey! My name is Andres Rodriguez',
                    style: TextStyle(
                        fontSize: headingFontSize, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I\'m a Web developer currently studying at the University of Central Florida Majoring in Digital Media with a track in web development and a minor in Computer Science. I\'m also currently Interning at Limbitless Solutions as a part of their web team. Currently learning all things JavaScript and building my skills in all aspects of development. Something that is a big interest currently is accessability in the web.',
                    style: TextStyle(fontSize: fontSize),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Previously I was the Community Building Coordinator at Design & Code, and one of the founding officers of the registered student organization, building the foundations of a collaborative environment for students intereste3d in all aspects of Design and Code. I was also a part of their Web team and assisted in building the organizations initial website using react.',
                    style: TextStyle(fontSize: fontSize),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I fell in love with Web development! I enjoy learning about new technologies and growing as a developer. Outside of development I am passionate about film, music, card games, design, and I enjoy going to the gym. Lately I\'ve found myself growing my vinyl collection as well as learning about accessability standards in the web.',
                    style: TextStyle(fontSize: fontSize),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
