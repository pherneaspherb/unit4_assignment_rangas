import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JOHN PHER LOYD S. RANGAS'),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/myImage.png'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'John Pher Loyd S. Rangas',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Call me PHER, and always PHER!',
                          style: TextStyle(fontSize: 22, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Information Section
              buildInfoContainer(Icons.cake, 'Birthdate', 'June 12, 2003'),
              buildInfoContainer(Icons.favorite, 'Hobbies', 'Watching Anime/Series, Listening to Music, Online Gaming, Playing Volleyball'),
              buildInfoContainer(Icons.location_on, 'Location', 'Brgy. Tiring, Cabatuan, Iloilo City, Philippines'),
              buildInfoContainer(Icons.email, 'Email', 'johnpherloyd.rangas@wvsu.edu.ph'),
              buildInfoContainer(Icons.book, 'Course', 'BS in Information Technology'),
              buildInfoContainer(Icons.school, 'Education', 'West Visayas State University'),

              const SizedBox(height: 20),

              // Biography Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8), // Corrected this line
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'All About Pher',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hi, my name is John Pher Loyd S. Rangas. You must always call me Pher. I do not like my third name, and since '
                      'it was given by my dear parents, all I have to do is learn to embrace it. I am simple person. If you give me '
                      'something, I will give you more than that. I really liked to mirror personality, and traits of other people. '
                      'Recently, I have been struggling with my mental and physical health. I do not know what career path I should '
                      'pursue, what kind of lifestyle I really wanted, having problems with my weight, and so much more. Anyways, '
                      'I am ending it here. Hopefully I will survive everything that I doubt. Till the next time, bye!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildInfoContainer(IconData icon, String label, String data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8), // Corrected this line
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.green),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                data,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
