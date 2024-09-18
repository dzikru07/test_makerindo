import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_makerindo/module/home/controller/home_controller.dart';

// make home view with 4 button to show alert dialog
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Konversi Waktu',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              // textfield to input time
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: controller.timeConvert,
                  decoration: const InputDecoration(
                    hintText: 'Input Time',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() =>
                      Text('Time: ${controller.timeConvertResult.value}')),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      controller.convertTime();
                    },
                    child: const Text('Convert Time'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Email Validation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              // textfield to input time
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: controller.emailValidation,
                  decoration: const InputDecoration(
                    hintText: 'Input Email',
                  ),
                  onChanged: (value) {
                    controller.validateEmail();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => controller.emailValidationResult.value
                      ? Text('Email Valid',
                          style: TextStyle(color: Colors.green))
                      : Text('Email Invalid',
                          style: TextStyle(color: Colors.red))),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Text('Text Reverse',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              // textfield to input time
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: controller.textReverse,
                  decoration: const InputDecoration(
                    hintText: 'Input Text',
                  ),
                  onChanged: (value) {
                    controller.reverseEmail();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() =>
                      Text('Text: ${controller.textReverseResult.value}')),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Text('Text Number',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              // textfield to input time
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: controller.textPalindrome,
                  decoration: const InputDecoration(
                    hintText: 'Input Number',
                  ),
                  onChanged: (value) {},
                ),
              ),
              Obx(() => SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.textPalindromeResult.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            width: 80,
                            height: 30,
                            child:
                                Text(controller.textPalindromeResult[index]));
                      },
                    ),
                  )),
              SizedBox(height: 20),
              Text('Text Fizz Buzz',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              // textfield to input time
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: controller.textFizzBuzz,
                  decoration: const InputDecoration(
                    hintText: 'Input Number',
                  ),
                  onChanged: (value) {},
                ),
              ),
              Obx(() => SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.textFizzBuzzResult.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            width: 80,
                            height: 30,
                            child: Text(controller.textFizzBuzzResult[index]));
                      },
                    ),
                  )),
              // button process list
              ElevatedButton(
                onPressed: () {
                  controller.vowel();
                },
                child: const Text('Process Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
