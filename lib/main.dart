import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstWidget());
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-560w,f_auto,q_auto:best/rockcms/2022-10/taylor-swift-folklore-jp-221017-2d6e45.jpg',
                ),
              ),
              const Text(
                'Taylor Swift',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Singer-Songwriter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 120,
                endIndent: 120,
                color: Colors.white,
              ),
              Container(
                color: Colors.orange.shade700,
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                margin: const EdgeInsets.symmetric(horizontal: 32.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Text(
                      '+6281-227-227-227',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange.shade700,
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 4.0,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.https,
                      color: Colors.white,
                    ),
                    Text(
                      'taylorswift.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Equivalent to component in Reeact, I think
class ReusableWidget extends StatelessWidget {
  // props
  const ReusableWidget({
    super.key,
    required this.textContent,
    required this.bgColor,
  });

  final String textContent; // and this is props
  final Color bgColor; // this too

  // Return view
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 100,
      width: 100,
      margin: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          textContent,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
