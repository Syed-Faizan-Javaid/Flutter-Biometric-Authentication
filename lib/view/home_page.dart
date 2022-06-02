import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/increment_controller.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    final Controller accessor = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome: " '${accessor.name}',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'You are Successfully Authenticated',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enter Your Count",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 25,
              ),
              Obx(() => Text(
                    "Total Count: " '${c.count}',
                    style: const TextStyle(fontSize: 22),
                  )),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                  child: const Icon(Icons.add), onPressed: c.increment),
              const SizedBox(height: 60),
              buildLogoutButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogoutButton(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0))),
        child: const Text(
          'Logout',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () => Get.back(),
      );
}
