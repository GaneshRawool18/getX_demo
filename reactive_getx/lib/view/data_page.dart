import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_getx/controller/employee_controller.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  EmployeeController empObj =Get.find<EmployeeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Obx(
            (){
            return Column(
              children: [
                Text("Emp name : ${empObj.obj.value.empName}"),
                  const SizedBox(height: 20,),
                  Text("Project Id : ${empObj.obj.value.projectId}"),
                  const SizedBox(height: 20,),
                  Text("Project Domain : ${empObj.obj.value.projectDom}"),
                  const SizedBox(height: 20,),
              ],
            );
            }
          )
        ],
      ),
    );
  }
}