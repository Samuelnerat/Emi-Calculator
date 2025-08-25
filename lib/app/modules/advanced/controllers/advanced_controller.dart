import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class EmiController extends GetxController {
  final loanAmount = TextEditingController();
  final interestRate = TextEditingController();
  final duration = TextEditingController();
  final feesCharges = TextEditingController();
  final gstOnInterest = TextEditingController();

  var isYear = true.obs;
  var result = ''.obs;

  void calculateEMI() {
    if (loanAmount.text.isEmpty ||
        interestRate.text.isEmpty ||
        duration.text.isEmpty) {
      result.value = "Please fill all required fields.";
      return;
    }

    double principal = double.parse(loanAmount.text);
    double annualRate = double.parse(interestRate.text);
    double time = double.parse(duration.text);
    double fees = feesCharges.text.isEmpty ? 0 : double.parse(feesCharges.text);
    double gst = gstOnInterest.text.isEmpty ? 0 : double.parse(gstOnInterest.text);

    // Convert to months
    double months = isYear.value ? time * 12 : time;
    double monthlyRate = annualRate / 12 / 100;

    // EMI Formula
    double emi = (principal * monthlyRate * pow(1 + monthlyRate, months)) /
        (pow(1 + monthlyRate, months) - 1);

    // Fees
    double totalFees = (fees / 100) * principal;

    // GST
    double gstAmount = emi * (gst / 100);

    // Final EMI per month
    double finalEmi = emi + gstAmount;

    result.value =
        "Monthly EMI: ₹${finalEmi.toStringAsFixed(2)}\nTotal Fees: ₹${totalFees.toStringAsFixed(2)}";

          Get.snackbar(
    "EMI Calculation Result",
    "Monthly EMI: ₹${finalEmi.toStringAsFixed(2)}\nTotal Fees: ₹${totalFees.toStringAsFixed(2)}",
    snackPosition: SnackPosition.BOTTOM, // or TOP
    backgroundColor: const Color(0xFF0A6CF1).withOpacity(0.8),
    colorText: const Color(0xFFFFFFFF),
    margin: const EdgeInsets.all(12),
    borderRadius: 10,
  );
  }
}
