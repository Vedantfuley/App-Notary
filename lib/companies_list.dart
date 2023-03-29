
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class CompaniesList extends StatefulWidget {
  const CompaniesList({Key? key}) : super(key: key);

  @override
  State<CompaniesList> createState() => _CompaniesListState();
}
var data = Get.arguments;
class _CompaniesListState extends State<CompaniesList> {
  @override
  Widget build(BuildContext context) {
     int counter=0;
    return Scaffold(
      body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,80,0,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Companies List'),
                  SizedBox(height: 10),
                  Text('$counter companies Found'),
                  SizedBox(height: 20),

                  Text(''),
                ],
              ),
            ),
          ),


    );
  }
}


