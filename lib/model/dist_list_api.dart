import 'dart:convert';

import 'package:bpp_shop/component/Add_new_Address.dart';
import 'package:bpp_shop/model/district_json.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:bpp_shop/getdist_api.dart';



class MyApi extends StatefulWidget {
  const MyApi({Key? key}) : super(key: key);

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {

  Future getApiData() async{
    String url ="https://bppshops.com/api/district/ajax/3";
    var result = await http.get(Uri.parse(url));
    // print(result.body);
    apiList = jsonDecode(result.body)
        .map((item) =>Autogenerated .fromJson(item))
        .toList()
        .cast<Autogenerated>();

    setState(() {

    });
  }

  List<Autogenerated>? apiList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("My API"),
      ),
      body: Column(
        children: [
          if(apiList !=null)
            getList()
        ],
      ),
    );
  }
  Widget getList(){
    return Expanded(
      child: ListView.builder(
          itemCount: apiList!.length,
          itemBuilder: (BuildContext context ,int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Address(districtName: apiList![index].name,)));
                  },
                  child: Card(
                      elevation: 5,
                      child:Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(5,10, 0, 10),
                        child:Text("${apiList![index].name}"),
                      )
                  ),
                ),

              ],
            );
          }),
    );

  }
}
