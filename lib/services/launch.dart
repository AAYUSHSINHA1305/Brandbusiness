import 'package:url_launcher/url_launcher.dart';

class Launch {
  static Future<void> launch_url(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }
}
