import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/enums.dart';

late SharedPreferences localStorage;

final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();///used for the global

Future<void> launchUrlFromMsg(BuildContext context, String message) async {

  final urlRegex = RegExp(r'(https?:\/\/[^\s]+|www\.[a-zA-Z0-9.-]{3,}\.[a-zA-Z]{2,}[^\s]*|\b[a-zA-Z0-9.-]{3,}\.[a-zA-Z]{2,}\b[^\s]*)',);
  final match = urlRegex.firstMatch(message);
  print("link to open $match");
  String? url = match?.group(0);

  if (url == null) {
    showSnackbar(message: "No link");
    return;
  }
  // Add https:// if missing
  if (!url.startsWith('http://') && !url.startsWith('https://')) {
    url = 'https://$url';
  }
  final Uri? uri = Uri.tryParse(url);

  if (uri == null || !(uri.isScheme('http') || uri.isScheme('https'))) {
    showSnackbar(message: "InValid Url");
    return;
  }
  if (await canLaunchUrl(uri)) {
    await launchUrl(
        uri, mode: LaunchMode.externalApplication);
  } else {
    showSnackbar(message: "Could not Launch $url");
    return;
  }
}

void showSnackbar({
  required String message,
  SnackType? type,
})
{
  if (message.trim().isEmpty) return;

  Color backgroundColor;
  switch (type) {
    case SnackType.success:
      backgroundColor = const Color(0xFF0C7351);
      break;
    case SnackType.failure:
      backgroundColor = const Color(0xFFCF1702);
      break;
    case SnackType.warning:
      backgroundColor = const Color(0xFFB34D4A);
      break;
    default:
      backgroundColor = const Color(0xFF0C7351);
  }

  final messenger = snackbarKey.currentState;
  if (messenger == null) return;

  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        action: SnackBarAction(
          label: '✕',
          textColor: Colors.white,
          onPressed: () {
            messenger.hideCurrentSnackBar();
          },
        ),
      ),
    );
}
