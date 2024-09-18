import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_makerindo/module/auth/view/auth_login_view.dart';

// make login using image title, description, textfield username, password, and button
class AuthRegisterView extends StatelessWidget {
  const AuthRegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                // login text

                Container(
                  width: Get.width,
                  height: Get.height * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTY50AnR35-aKaONIPoeLNh_KrvAq9bwD7A&s"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: Get.width,
                  height: Get.height * 0.5,
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // Image.network(
            //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTY50AnR35-aKaONIPoeLNh_KrvAq9bwD7A&s',
            //   width: Get.width,
            //   errorBuilder: (context, error, stackTrace) {
            //     return const Icon(Icons.error);
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create an account',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Quickly and easily create an account',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  const SizedBox(height: 20),
                  // container with button login color green
                  Container(
                    width: Get.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Register',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // text dont have account? register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Have an account?'),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const AuthLoginView());
                          },
                          child: const Text('Login'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
