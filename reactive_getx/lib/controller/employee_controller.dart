import 'package:get/get.dart';
import 'package:reactive_getx/model/employee.dart';

class EmployeeController extends GetxController {
  Rx<Employee> obj =
      Employee(empName: "Nitin", projectDom: "HealthCare", projectId: 102).obs;

  void changeInfo(String projectDom, int projectId) {
    obj.update((change) {
      change!.projectDom = projectDom;
      change.projectId = projectId;
    });
  }
}
