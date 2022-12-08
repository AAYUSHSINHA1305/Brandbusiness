import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PaypalWebview extends StatefulWidget {
  const PaypalWebview({super.key});

  @override
  State<PaypalWebview> createState() => _PaypalWebviewState();
}

class _PaypalWebviewState extends State<PaypalWebview> {
  late WebViewController _webViewController;
  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _webViewController.goBack();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: WebView(
          onWebViewCreated: (WebViewController webViewController) {
            _webViewController = webViewController;
          },
          initialUrl: AppConstants.url,
          javascriptMode: JavascriptMode.unrestricted,
          onProgress: (int progress) {
            print("WebView is loading (progress : $progress%)");
          },
          javascriptChannels: <JavascriptChannel>{
            _toasterJavascriptChannel(context),
          },
          navigationDelegate: (NavigationRequest request) {
            print('allowing navigation to $request');
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          gestureNavigationEnabled: true,
        ),
      ),
    );
  }
}