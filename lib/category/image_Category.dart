// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_project/widget/CircalAvatar.dart';


// import 'package:url_launcher/url_launcher.dart';

class Widget_Ui extends StatefulWidget {
  Widget_Ui({super.key});

  @override
  State<Widget_Ui> createState() => _Widget_UiState();
}

class _Widget_UiState extends State<Widget_Ui> {

  final List<String> socialMediaList = [
    'github.png',
    'instagram.png',
    'linkedin.png',
    'twitter.png',
    'whatsapp.png',
    'whatsapp.png',
    'whatsapp.png',
    'whatsapp.png',
    'whatsapp.png',
    'social.png'
  ];


  // @override
  // void initState() {
  //   super.initState();
  //   controller = WebViewController()
  //     ..loadRequest(
  //       Uri.parse('https://flutter.dev'),
  //     );
  // }
  //

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/IMG-20240805-WA0007.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Ahmed Shalaan',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                onPressed: () {
                  // launchUrl(Uri.parse('tel:+201064743699'))
                },
              ),
              const SizedBox(height: 15),
              const Text(
                '+20 106473655',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black,
            indent: 100.0,
            endIndent: 100.0,
            thickness: 1,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: socialMediaList.length,
              itemBuilder: (context, index) {
                return IconMedia(
                  StrIconImage: socialMediaList[index],
                );
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}

/*
SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/IMG-20240805-WA0007.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Ahmed Shalaan',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                onPressed: () {
                  // launchUrl(Uri.parse('tel:+201064743699'))
                },
              ),
              const SizedBox(height: 15),
              const Text(
                '+20 106473655',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black,
            indent: 100.0,
            endIndent: 100.0,
            thickness: 1,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: socialMediaList.length,
              itemBuilder: (context, index) {
                return IconMedia(
                  StrIconImage: socialMediaList[index],
                );
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
 */