import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opacity_slider_getx/controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final OpacityController controller = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(controller.opacity.value)),
                )),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Slider(
                  value: controller.opacity.value,
                  onChanged: (value) {
                    controller.setOpacity(value);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
