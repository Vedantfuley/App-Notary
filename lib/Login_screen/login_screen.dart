import 'package:appnotary/companies_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

final Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: Controller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  constraints: BoxConstraints.tight(const Size(300, 50)),
                  iconColor: Colors.black,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              SizedBox(width: 90,
                child: ElevatedButton(onPressed: () {
                  putdata();
                  String email = Controller.text.toString();

                  if (email != '' ){
                    print('Succesfull');
                    Get.toNamed('/companies');
                  }
                  else{
                    Get.snackbar('Error', "Please Enter E-Mail ID",
                    snackPosition: SnackPosition.BOTTOM);
                  }

                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }

void putdata() async{
  var dio =Dio();
  var response = await dio.post("https://notaryapp-staging.herokuapp.com/customer/login",
  data: {"email": "demo@thenotary.app"});
  print(response.statusCode);
  print(response.data.toString());

}