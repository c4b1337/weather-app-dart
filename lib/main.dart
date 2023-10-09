import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
        body: _buildBody(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _weatherDescription(),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(
    image: NetworkImage(
        'https://images.squarespace-cdn.com/content/v1/57825361440243db4a4b7830/a6b48724-dc61-4056-8566-ad31d4fcaf61/Gorpcore-UK-gorpgirls-advancedrock-114index-moodboards-gorp-goretex-outdoors-arcteryx-columbia-climbing-hike-instagram-communities-corecore-ukoutdoors-lewiswilson-hannahdasilva-liamfurneaux-sabukaru-online-magazine-tokyo13.jpg'),
    fit: BoxFit.cover,
  );
}

//TODO: Create dynamic weather description, temperature, and location

Column _weatherDescription() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Monday - October 9',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w200,
          color: Colors.black,
        ),
      ),
      //Розділитель між текстом
      Divider(),
      Text(
        "In the mountains, at the heart of gorpcore style, our team embarked on a mountain biking race in fair weather, dressed in reliable mountain jackets and retro baseball caps, ready for incredible adventures.",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.blueGrey,
        ),
      ),
    ],
  );
}
