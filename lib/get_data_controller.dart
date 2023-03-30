import 'package:appnotary/get_data_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class GetDataContorller extends GetxController{



var isLoading = false.obs;
var getDataModel = GetDataModel(email: '', companiesList: []).obs;

getDataFromApi() async {
  isLoading.value = true;
  try {
    var response = await Dio().get(
        'https://notaryapp-staging.herokuapp.com/customer/login');
    getDataModel.value = GetDataModel.fromJson(response.data);
    print(response);
    isLoading.value = false;
  } catch (e) {
    print(e);
  }
}
}