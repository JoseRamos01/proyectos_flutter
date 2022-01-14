import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'icons/linkedin_icon.dart';
import 'icons/mail_icon.dart';
import 'icons/phone_icon.dart';
import 'styles.dart';

class Contact extends StatelessWidget {
  const Contact({
    required this.email,
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  final String email;
  final String phoneNumber;
  final String _linkedinUrl = 'www.linkedin.com';

  void _launchLinkedinURL() async {
    if (!await launch(_linkedinUrl)) throw 'Could not launch $_linkedinUrl';
  }

  void _launchPhoneUrl() async {
    if (!await launch('tel:$phoneNumber')) throw 'Could not launch $phoneNumber';
  }

  void _launchMailUrl() async {
    if (!await launch('mailto:$email')) throw 'Could not launch $email';
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
        child: GestureDetector(
          onTap: _launchMailUrl,
        child: Row(children: <Widget>[
          const MailIcon(),
          Text(
            // snapshot.data!.email,
            email,
            style: Styles.contactStyle,
            textAlign: TextAlign.center,
          ),
        ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
        child: GestureDetector(
          onTap: _launchPhoneUrl,
          child: Row(children: <Widget>[
            const PhoneIcon(),
            Text(
              // snapshot.data!.phoneNumber,
              phoneNumber,
              style: Styles.contactStyle,
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
        child: GestureDetector(
          onTap: _launchLinkedinURL,
          child: Row(children: <Widget>[
            const LinkedinIcon(),
            Text(
              // snapshot.data!.linkedin,
              _linkedinUrl,
              style: Styles.contactStyle,
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
      const SizedBox(
        height: 40,
      )
    ]);
  }
}
