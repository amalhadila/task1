import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/color_app.dart';
import 'package:task/core/themes/styles.dart';
import 'package:task/features/home/presentation/views/home_view.dart';
import 'package:task/features/login/presentation/views/widgets/password_textfield.dart';
import 'package:task/features/login/presentation/views/widgets/phone_textfield.dart';
import 'package:task/features/profile/presentation/views/profile_view.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String selectedUserType = "Equestrian";
  bool passwordVisible = false;
  bool isvisible = false;
  String? password, phone;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                userTypeOption("Equestrian", selectedUserType == "Equestrian"),
                const SizedBox(width: 10),
                userTypeOption("Trainer", selectedUserType == "Trainer"),
              ],
            ),
            const SizedBox(height: 20),

    
            const Text('Phone Number'),
            PhoneTextfield(
              onChanged: (value) {
                phone = value;
              },
            ),

            const SizedBox(height: 15),

            const Text('Password'),
            PasswordTextfield(
              onChanged: (value) {
                password = value;
              },
              isobscure: !isvisible,
              togglevisibility: () {
                setState(() {
                  isvisible = !isvisible;
                });
              },
              isvisible: isvisible,
            ),

            const SizedBox(height: 20),

            /// تسجيل الدخول كضيف
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("or login ", style: Styles.textStyle15.copyWith(color: Colors.grey)),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "As a Guest",
                    style: Styles.textStyle15.copyWith(color: ColorApp.kBlueColor),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: Styles.textStyle15.copyWith(
                      color: ColorApp.kBlueColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeView()));
                        
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorApp.kBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(20),
                ),
                child: Text(
                  'Sign In',
                  style: Styles.textStyle16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget userTypeOption(String title, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedUserType = title;
        });
      },
      child: Container(
        width: 110.w,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10).r,
        decoration: BoxDecoration(
          border: Border.all(color: selected ? Colors.blue : Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: selected ? Colors.white : const Color.fromARGB(255, 252, 249, 249),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Radio(
                value: title,
                groupValue: selectedUserType,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    selectedUserType = value!;
                  });
                },
              ),
            ),
            Icon(Icons.person, color: selected ? Colors.blue : Colors.grey),
            Text(
              title,
              style: TextStyle(
                color: selected ? Colors.black : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
