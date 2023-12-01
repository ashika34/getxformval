import 'package:flutter/material.dart';
import 'package:formval/custom_form_field.dart';
import 'package:formval/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
      ),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              const Text('Email'),
              CustomFormField(
                hintText: 'Enter Email',
                validator: (email) => controller.validateEmail(email),
              ),
              const Text('Password'), // Fix: Change this Text widget to 'Password'
              SizedBox(
                height: 24,
              ),
              CustomFormField(
                hintText: 'Enter Password',
                validator: (pwd) => controller.validatePassword(pwd),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () => controller.onLogin(),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
