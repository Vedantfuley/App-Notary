import 'package:appnotary/companies_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'Login_screen/login_screen.dart';

void main() async{
  await GetStorage.init();
  runApp( GetMaterialApp(
    initialRoute: '/login',
    getPages: [
      GetPage(name: '/login', page: () => LoginScreen()),
      GetPage(name: '/companies', page: () => CompaniesList()),

    ],
  ));
}

