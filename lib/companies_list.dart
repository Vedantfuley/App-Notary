
import 'dart:developer';

import 'package:appnotary/API_Services.dart';
import 'package:appnotary/get_data_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'get_data_controller.dart';


class CompaniesList extends StatefulWidget {
   CompaniesList({Key? key}) : super(key: key);
  @override
  State<CompaniesList> createState() => _CompaniesListState();
}
class _CompaniesListState extends State<CompaniesList> {
  final userdata = GetStorage();
  final count = Counter;
  final getDataController = Get.put(GetDataContorller());
  Fetchuser _userList = Fetchuser();

  @override
  void initState() {
    // TODO: implement initState
    getDataController.getDataFromApi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20,80,0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Companies List'),
              SizedBox(height: 10),
              Text('companies Found'),
              SizedBox(height: 20),
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  child: FutureBuilder<List<GetDataModel>>(
                    future: _userList.getUserList(),
                    builder: (context, snapshot){
                      var data = snapshot.data;
                      if(!snapshot.hasData){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.builder(
                        shrinkWrap: true,
                          itemCount: data?.length,
                          itemBuilder: (context, index){
                            return Card(
                           child: Padding(
                                  padding: const EdgeInsets.all(15),
                                    child: ListTile(

                                 title: Column(
                                children: [
                               Text('${data?[index].companiesList}'),
                                      ]
    ),
    ),
    ),
    );
    }

    );

    }),
                ),
              )
            ],
          ),
        ),



    );
  }
}



