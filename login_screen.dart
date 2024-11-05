import 'package:belajar_widget/styles.dart';
import 'package:belajar_widget/widget/costum_textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObsure = true;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
           style: TextStyles.title,
         ),  
         centerTitle: true,
         backgroundColor: Colors.white,
         elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/images.png'),
              const SizedBox(height: 24.0),
              Text(
                'FLUTTER',
                style: TextStyles.title.copyWith(fontSize: 20.0),
              ),
              const SizedBox(height: 16.0),
              CostumTextfield(
               controller: emailController,
               textInputType: TextInputType.emailAddress, 
               textInputAction: TextInputAction.next, 
               hint: 'Email or Username'
              ),
               CostumTextfield(
               controller: passwordController,
               textInputType: TextInputType.visiblePassword, 
               textInputAction: TextInputAction.done, 
               hint: 'Password',
               isObsure: isObsure,
               hasSuffix: true,
               onPressed: () {
                setState(() {
                  isObsure = !isObsure;
                });
               },
              ),
              const SizedBox(height: 8.0),
              Text('Forgot Password ?', style: TextStyles.body),
              const SizedBox(height: 24.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {}, 
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Login', 
                    style: TextStyles.title.copyWith(
                      fontSize: 20.0, 
                  color: Colors.white
                  )
                                 ),
                ),
              ),
              const SizedBox(height: 24.0),
              Text('Don\'t have an account ?', 
              style: TextStyles.body.copyWith(fontSize: 18.0),
              textAlign: TextAlign.center,
              ),
              Text('Sign Up', 
              style: TextStyles.body.copyWith(
                fontSize: 18.0,
                color: AppColors.darkBlue,
               ),
               textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      )
    );
  }
}