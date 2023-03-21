import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view/screen/provider/web_provider.dart';
import 'package:web_view/screen/view/web_view_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class web_screen2 extends StatefulWidget {
  const web_screen2({Key? key}) : super(key: key);

  @override
  State<web_screen2> createState() => _web_screen2State();
}
Web_view_provider?web_view_providert,web_view_providerf;
class _web_screen2State extends State<web_screen2> {
  @override
  Widget build(BuildContext context) {
    web_view_providert=Provider.of<Web_view_provider>(context,listen: true);
    web_view_providerf=Provider.of<Web_view_provider>(context,listen: false);
    return SafeArea(child: Scaffold(
      body: WebViewWidget(controller: web_view_providerF!.webViewController!),
    ),
    );

  }
}
