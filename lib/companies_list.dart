
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';


class CompaniesList extends StatefulWidget {
  const CompaniesList({Key? key}) : super(key: key);
  @override
  State<CompaniesList> createState() => _CompaniesListState();
}
class _CompaniesListState extends State<CompaniesList> {
  final userdata = GetStorage();
  final count = Counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,80,0,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Companies List'),
                    SizedBox(height: 10),
                    Text(' companies Found'),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),



    );
  }
}



