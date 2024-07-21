import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:imepay_assesment/model/response_model.dart';

class ApiService {
  static const baseUrl =
      'https://mocki.io/v1/4bbb3346-437e-4e3d-a803-d34beeced4a4';

  Future<ResponseModel> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      print("Data Fetched Successfully");

      return ResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
