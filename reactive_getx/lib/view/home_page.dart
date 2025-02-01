import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_getx/controller/employee_controller.dart';
import 'package:reactive_getx/view/data_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  EmployeeController empObj = Get.put(EmployeeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reacctive Getx"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Obx(() {
            return Column(
              children: [
                Text("Emp name : ${empObj.obj.value.empName}"),
                const SizedBox(
                  height: 20,
                ),
                Text("Project Id : ${empObj.obj.value.projectId}"),
                const SizedBox(
                  height: 20,
                ),
                Text("Project Domain : ${empObj.obj.value.projectDom}"),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          }),
          ElevatedButton(
              onPressed: () {
                empObj.changeInfo("EduTech", 518);
                Get.to(const DataPage());
              },
              child: const Text("change Data")),
        ],
      ),
    );
  }
}
