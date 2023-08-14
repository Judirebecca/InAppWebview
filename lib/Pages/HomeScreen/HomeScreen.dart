// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../Helpers/AppConstants/AppConstants.dart';
import 'HomeScreenVM.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  final dynamic extraData;
  const HomeScreen({
    Key? key,
    required this.extraData,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenVM _homeScreenVM = HomeScreenVM();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fab location
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      appBar: AppBar(title: const Text('InAppWebView POC')),
      floatingActionButton: FloatingActionButton(child:  const Icon(
      Icons.share,
      size: 24.0,
      ) ,onPressed: (){
       Share.share(_homeScreenVM.url);
      }),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(AppConstants.url), headers: AppConstants.header),
        onLoadStart:  (controller, url) {
          _homeScreenVM.clearWebViewCache();
          _homeScreenVM.setUrl(webUrl: url.toString());
        },

        onLoadStop: (controller, url) {
          // After Page finishes loading, inject custom CSS
          _homeScreenVM.injectCustomCSS();
        },

        initialUserScripts: UnmodifiableListView<UserScript>([
          // Inject JS at the end of the document
          UserScript(source: AppConstants.useragentjs, injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END)
        ]),
      ),
    );
  }

}
