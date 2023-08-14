
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mobx/mobx.dart';
part 'HomeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel;

abstract class _HomeScreenModelBase with Store {
     InAppWebViewController? webViewCtrl;

   void setwebview({required InAppWebViewController? webViewCtrl}){
    this.webViewCtrl = webViewCtrl;
   }

  @observable
   String url = "";

   @action
   void setUrl({required String webUrl}){
    url = webUrl;
   }
}