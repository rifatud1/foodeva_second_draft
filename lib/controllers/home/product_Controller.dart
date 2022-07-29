import 'package:foodeva_second_draft/api_services_new.dart';
import 'package:foodeva_second_draft/utils/_utils.dart';
import 'package:get/get.dart';

import '../../models/product/GetAllProduct.dart';

class ProductController extends GetxController {
  ApiService _apiService = ApiService();

  final allProduct = [].obs;

  @override
  void onInit() {
    getAllProduct().then((value){
      allProduct.value = value;
    });
    super.onInit();
  }

  Future<dynamic> getAllProduct() async {
    String url = '/products?consumer_key=$consumer_key&consumer_secret=$consumer_secret';
    return await _apiService.makeApiRequest(
        method: apiMethods.get, url: url, body: null, headers: null);
  }
}
