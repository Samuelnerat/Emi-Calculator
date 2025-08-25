import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/advanced/controllers/advanced_controller.dart';
import 'package:my_getx_app/app/utils/widgets/input.dart';

class EmiCalculatorScreen extends GetView<EmiController> {
  const EmiCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f4),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          "ADVANCE EMI CALCULATOR",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: w * 0.95,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(
                    label: "Loan Amount",
                    hint: "₹10000",
                    controller: controller.loanAmount,
                  ),
                  InputField(
                    label: "Interest %",
                    hint: "6.2%",
                    controller: controller.interestRate,
                  ),

                  const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center, 
                    children: [
                      const Text(
                        "Time Duration",
                        style: TextStyle( fontSize: 15,
                              fontWeight: FontWeight.w500,),
                      ),
                    Row(
                      children: [
                        Obx(() => Radio(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              value: true,
                              groupValue: controller.isYear.value,
                              onChanged: (val) {
                                controller.isYear.value = true;
                              },
                            )),
                        const Text("Years"),
                        Obx(() => Radio(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              value: false,
                              groupValue: controller.isYear.value,
                              onChanged: (val) {
                                controller.isYear.value = false;
                              },
                            )),
                        const Text("Months"),
                      ],
                    ),
                  ],
                ),
                  InputField(
                    hint: "4",
                    controller: controller.duration,
                  ),
                ],
              ),

                  InputField(
                    label: "Fees and Charges %",
                    hint: "1%",
                    controller: controller.feesCharges,
                  ),
                  InputField(
                    label: "GST On Interest %",
                    hint: "5%",
                    controller: controller.gstOnInterest,
                  ),

                  const SizedBox(height: 16),

                  // Calculate Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () => controller.calculateEMI(),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF0A6CF1), Color(0xFF2D9CDB)],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          child: const Text(
                            "Calculate",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Obx(() => Text(
                  //       controller.result.value,
                  //       style: const TextStyle(
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w500,
                  //       ),
                  //     )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


