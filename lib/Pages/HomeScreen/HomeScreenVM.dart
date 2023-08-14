import 'package:webviewgesture/Pages/HomeScreen/HomeScreenModel.dart';

import '../../Helpers/AppConstants/AppConstants.dart';



class HomeScreenVM extends HomeScreenModel{
  
  // Function to inject custom CSS into the WebView
  Future<void> injectCustomCSS() async {
    if (webViewCtrl != null) {
      await webViewCtrl!.injectCSSCode(source: AppConstants.customCSS);
    }
  }
    // for clearing the webview cache
  Future<void> clearWebViewCache() async {
    if (webViewCtrl != null) {
      await webViewCtrl!.clearCache();
    }
  } 
  
}