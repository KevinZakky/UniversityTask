import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_modul3/app/modules/home/controllers/HttpController.dart';
import 'package:latihan_modul3/app/modules/home/models/User.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);
  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  final HttpController controller = Get.put(HttpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<User>(
          future: controller.fetchUsers(),
          builder: (context, snapshot) {
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }
}
