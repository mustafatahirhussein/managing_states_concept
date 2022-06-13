import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maintaining_states_flutter_concept/Model/users_model.dart';
import 'package:http/http.dart' as http;

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> with AutomaticKeepAliveClientMixin {
  List<UsersModel>? userModel;

  fetchUsers() async {
    try {
      var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

      if (response.statusCode == 200) {
        List<UsersModel> model = usersModelFromJson(response.body);
       userModel = model;

        return userModel;
      } else {
        return <UsersModel>[];
      }
    } catch (e) {
      debugPrint(e.toString());
      return <UsersModel>[];
    }
  }

  @override
  void initState() {
    super.initState();
    userModel = [];
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return userModel == null ? const Center(child: CircularProgressIndicator()) : ListView.builder(
      shrinkWrap: true,
      itemCount: userModel!.length,
      itemBuilder: (context, index) {
       var items = userModel![index];

        return Card(
          child: ListTile(
            title: Text(items.name!),
            subtitle: Text(items.email!),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
