import 'package:flutter/foundation.dart';
import 'package:imepay_assesment/core/api_services/api_client.dart';
import 'package:imepay_assesment/model/response_model.dart';

class DataProvider with ChangeNotifier {
  ResponseModel apiData = ResponseModel();
  List<HomeMenu>? homeMenu = [];
  HomeMenu? footerMenu = HomeMenu();
  HomeMenu? headerMenu = HomeMenu();
  bool isLoading = true;
  // Other state variables as needed
  ApiService apiService = ApiService();
  fetchData() async {
    apiData = await apiService.fetchData();
    homeMenu = apiData.data!.responseData!.menuDetails!.homeMenu;
    headerMenu = apiData.data!.responseData!.menuDetails!.headerMenu;
    footerMenu = apiData.data!.responseData!.menuDetails!.footerMenu;
    isLoading = false;
    notifyListeners();
  }

  void setApiData(ResponseModel data) {
    apiData = data;
    isLoading = false;
  }
}
