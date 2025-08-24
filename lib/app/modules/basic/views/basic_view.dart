import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/basic/controllers/basic_controller.dart';
import 'package:my_getx_app/app/utils/constants/colors.dart';
import 'package:my_getx_app/app/utils/widgets/numerals.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalculatorController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: AppColors.basicCalculator,
        title: const Text(
          "Basic calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        controller.expression.value,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        controller.result.value,
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),

          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: NumeralWidget(
                        text: "C",
                        color: AppColors.basicGrey,
                        textColor: AppColors.basicCalculator,
                        onTap: controller.clear,
                      ),
                    ),
                    const Expanded(
                        child: SizedBox()),
                    const Expanded(child: SizedBox()),
                    Expanded(
                      child: NumeralWidget(
                        text: "+",
                        color: AppColors.basicGrey,
                        textColor: AppColors.basicCalculator,
                        onTap: () => controller.addInput("+"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: NumeralWidget(text: "1", onTap: () => controller.addInput("1"))),
                    Expanded(child: NumeralWidget(text: "2", onTap: () => controller.addInput("2"))),
                    Expanded(child: NumeralWidget(text: "3", onTap: () => controller.addInput("3"))),
                    Expanded(
                      child: NumeralWidget(
                        text: "-",
                        color: AppColors.basicGrey,
                        textColor: AppColors.basicCalculator,
                        onTap: () => controller.addInput("-"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: NumeralWidget(text: "4", onTap: () => controller.addInput("4"))),
                    Expanded(child: NumeralWidget(text: "5", onTap: () => controller.addInput("5"))),
                    Expanded(child: NumeralWidget(text: "6", onTap: () => controller.addInput("6"))),
                    Expanded(
                      child: NumeralWidget(
                        text: "x",
                        color: AppColors.basicGrey,
                        textColor: AppColors.basicCalculator,
                        onTap: () => controller.addInput("x"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: NumeralWidget(text: "7", onTap: () => controller.addInput("7"))),
                    Expanded(child: NumeralWidget(text: "8", onTap: () => controller.addInput("8"))),
                    Expanded(child: NumeralWidget(text: "9", onTap: () => controller.addInput("9"))),
                    Expanded(
                      child: NumeralWidget(
                        text: "÷",
                        color: AppColors.basicGrey,
                        textColor: AppColors.basicCalculator,
                        onTap: () => controller.addInput("/"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: NumeralWidget(text: ".", onTap: () => controller.addInput("."))),
                    Expanded(child: NumeralWidget(text: "0", onTap: () => controller.addInput("0"))),
                    Expanded(
                      child: NumeralWidget(
                        text: "⌫",
                        color: AppColors.basicCalculator,
                        textColor: Colors.white,
                        onTap: controller.delete,
                      ),
                    ),
                    Expanded(
                      child: NumeralWidget(
                        text: "=",
                        color: AppColors.basicCalculator,
                        textColor: Colors.white,
                        onTap: controller.calculate,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
