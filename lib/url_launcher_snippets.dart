import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';
/*
For Android 11 & above, <queries> might need be added to manifest file to query installed handler apps
as described here: https://pub.dev/packages/url_launcher
 */

launchMailApp() async {
  // Android and iOS
  var emailLaunchUri = Uri.parse('mailto:test@example.org?subject=Greetings&body=Hello%20World');
  try{
    await canLaunchUrl(emailLaunchUri) ? await launchUrl(emailLaunchUri): throw 'Email app not configured';
  } catch(e){
    log(e.toString());
  }
}

