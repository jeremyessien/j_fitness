import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:j_fitness/ui/widgets/app_button.dart';
import '../../widgets/app_textfield.dart';
import '../onboarding_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text(
                    'Hey there,',
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
                Center(
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.sp),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextField.withPrefix(
                  hintText: 'First Name',
                  prefixIcon: Icons.person,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextField.withPrefix(
                  hintText: 'Last Name',
                  prefixIcon: Icons.person,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextField.withPrefix(
                  hintText: 'Email',
                  prefixIcon: Icons.mail_outline_rounded,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextField.withSuffix(
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline_sharp,
                  isPassword: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: 'By continuing you accept our ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Terms of Use',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                AppButton(
                  height: 50,
                  type: AppButtonType.withCall,
                  text: 'Register',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnboardingScreen()),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? ', style: TextStyle(fontWeight: FontWeight.w400),),
                    GestureDetector(
                      onTap: () {
                        // Navigate to login screen
                      },
                      child: const Text(
                        'Login Here',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
