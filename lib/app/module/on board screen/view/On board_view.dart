import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:school_manage/app/module/on%20board%20screen/controller/on%20board_controller.dart';
import 'package:school_manage/app/module/on%20board%20screen/models/onboard_data_models.dart';

class OnboardpageView extends GetView<OnboardController> {
  const OnboardpageView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardController());
    return Scaffold(
      appBar: AppBar(actions: [
        Obx(() =>
            controller.onboardDataList.length - 1 == controller.index.value
                ? SizedBox()
                : TextButton(onPressed: () {}, child: Text("Skip"))),
        SizedBox(
          width: 20,
        ),
      ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: controller.onboardpageController,
              itemCount: controller.onboardDataList.length,
              onPageChanged: controller.changeindex,
              itemBuilder: (context, index) {
                OnboardDataModel data = controller.onboardDataList[index];
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: (Get.height / 10) * 5,
                        width: Get.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(data.img))),
                      ),
                      Text(
                        data.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data.subtitle,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.onboardDataList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 20,
                      width: controller.index == index ? 40 : 20,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Obx(
            () => ElevatedButton(
              onPressed: () {
                controller.goTonextpage();
              },
              child: controller.onboardDataList.length - 1 !=
                      controller.index.value
                  ? Text("Next")
                  : Text("Get Started"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
