import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/advanced/views/advanced_view.dart';
import 'package:my_getx_app/app/modules/basic/views/basic_view.dart';
import 'package:my_getx_app/app/utils/constants/colors.dart';
import 'package:my_getx_app/app/utils/widgets/card.dart';
import 'package:my_getx_app/app/utils/widgets/loan_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black),
        centerTitle: true,
        title: const Text(
          'EMI CALCULATOR',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              height: 180,
              decoration: BoxDecoration(
                color: AppColors.emiCalculator,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'EMI Loan Calculator',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 25,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Get.to(() => const BasicScreen());
                        },
                        child: const Text(
                          'Start Now',
                          style: TextStyle(
                            color: AppColors.emiCalculator,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                   
                    ],
                  ),
                  Center(child: Image.asset('assets/images/emi.png', height: 150, width: 150,)),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Loan calculator',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CardWidget(
                        text: "Advance EMI Calculator",
                        image: "assets/images/calculator.png",
                        bgColor: AppColors.advanceEmiPeach,
                        borderColor: AppColors.emiBorder,
                        textColor: AppColors.emiText,
                        buttonText: "Check Now",
                        height: 180,
                        onButtonPressed: () {
                          Get.to(() => const EmiCalculatorScreen());
                        },
                      ),
                      const SizedBox(height: 16),
                      CardWidget(
                        text: 'Loan Tenure Calculator',
                        image: 'assets/images/tenure.png',
                        bgColor: AppColors.loanTenureSkyBlue,
                        textColor: AppColors.tenure,
                        borderColor: AppColors.tenure,
                        height: 160,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CardWidget(
                        text: 'Compare Loan',
                        image: 'assets/images/compare.png',
                        bgColor: AppColors.compare,
                        textColor: AppColors.compareBorder,
                        borderColor: AppColors.compareBorder,
                        height: 107,
                      ),
                      const SizedBox(height: 16),
                      CardWidget(
                        text: 'Interest Loan',
                        image: 'assets/images/intrest.png',
                        bgColor: AppColors.interestLoan,
                        textColor: AppColors.interestLoanBorder,
                        borderColor: AppColors.interestLoanBorder,
                        height: 107,
                      ),
                      const SizedBox(height: 16),
                      CardWidget(
                        text: 'Loan Amount',
                        image: 'assets/images/amount.png',
                        bgColor: AppColors.loanAmount,
                        textColor: AppColors.loanAmountBorder,
                        borderColor: AppColors.loanAmountBorder,
                        height: 107,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// SECOND SECTION
            const Text(
              'Loan Profile Calculator',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoanCardWidget(
                  width: 110,
                  height: 100,
                  text: 'Create Loan Profile',
                  image: 'assets/images/create.png',
                  // borderColor: AppColors.buttonOrange,
                  textColor: AppColors.createLoanText,
                  color: AppColors.createLoan,
                ),
                LoanCardWidget(
                  width: 110,
                  height: 100,
                  text: 'View Loan Profile',
                  image: 'assets/images/view.png',
                  // borderColor: AppColors.buttonOrange,
                  color: AppColors.viewLoan,
                  textColor: AppColors.viewLoanText,
                ),
                LoanCardWidget(
                  width: 110,
                  height: 100,
                  text: 'Advance EMI Calculator',
                  image: 'assets/images/eligibility.png',
                  // borderColor: AppColors.buttonOrange,
                  color: AppColors.loanEligibility,
                  textColor: AppColors.loanEligibilityText,
                ),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
