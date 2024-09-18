import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController timeConvert = TextEditingController();
  RxString timeConvertResult = ''.obs;

  // convert 13:30 to am/pm
  void convertTime() {
    List<String> time = timeConvert.text.split(':');
    int hour = int.parse(time[0]);
    int minute = int.parse(time[1]);

    String result = '';
    if (hour > 12) {
      result = '${hour - 12}:$minute Siang';
    } else {
      result = '$hour:$minute Malam';
    }

    timeConvertResult.value = result;
  }

  TextEditingController emailValidation = TextEditingController();

  RxBool emailValidationResult = false.obs;

  void validateEmail() {
    if (GetUtils.isEmail(emailValidation.text)) {
      emailValidationResult.value = true;
    } else {
      emailValidationResult.value = false;
    }
  }

  TextEditingController textReverse = TextEditingController();

  RxString textReverseResult = ''.obs;

  void reverseEmail() {
    String email = textReverse.text;
    String result = email.split('').reversed.join();
    textReverseResult.value = result;
  }

  TextEditingController textPalindrome = TextEditingController();

  RxList textPalindromeResult = [].obs;

  // change input 1.225.441 to 1000000, 200000, 20000, 5000, 400, 40, 1
  void palindrome() {
    String text = textPalindrome.text;

    // change text to 1000000, 200000, 20000, 5000, 400, 40, 1
    List<String> result = text.split('').map((e) {
      int length = text.length - text.indexOf(e);
      String zero = '0' * (length - 1);
      return '$e$zero';
    }).toList();

    textPalindromeResult.value = result;
  }

  TextEditingController textFizzBuzz = TextEditingController();

  RxList textFizzBuzzResult = [].obs;

  // count if text 0 whent / 3 set to fizz and 5 set to buzz and 3 and 5 set to fizzbuzz
  // example 1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz
  void vowel() {
    String text = textFizzBuzz.text;

    // count if text 0 whent / 3 set to fizz and 5 set to buzz and 3 and 5 set to fizzbuzz
    // example 1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz
    List<String> result = text.split('').map((e) {
      if (int.parse(e) % 3 == 0 && int.parse(e) % 5 == 0) {
        return 'fizzbuzz';
      } else if (int.parse(e) % 3 == 0) {
        return 'fizz';
      } else if (int.parse(e) % 5 == 0) {
        return 'buzz';
      } else {
        return e;
      }
    }).toList();

    textFizzBuzzResult.value = result;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
