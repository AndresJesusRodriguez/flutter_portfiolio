import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  static const String linkedInUrl =
      'https://www.linkedin.com/in/andr%C3%A9s-rodriguez-343b83273/';
  static const String githubUrl = 'https://github.com/AndresJesusRodriguez';
  static const String email = 'mailto:arod21199@gmail.com';
  static const String resumeUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: Center(
        child: ListView(
          children: [
            buildContactItem(
              icon: Icons.abc,
              text: 'LinkedIn',
              onTap: () => _launchUrl(linkedInUrl),
            ),
            buildContactItem(
              icon: Icons.abc,
              text: 'GitHub',
              onTap: () => _launchUrl(githubUrl),
            ),
            buildContactItem(
              icon: Icons.email,
              text: 'Email',
              onTap: () => _launchUrl(email),
            ),
            buildContactItem(
              icon: Icons.description,
              text: 'Resume',
              onTap: () => _launchUrl(resumeUrl),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContactItem(
      {required IconData icon, required String text, required Function onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () => onTap(),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'could not launch $url';
    }
  }
}
