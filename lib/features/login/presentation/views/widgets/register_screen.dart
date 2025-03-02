import 'package:flutter/material.dart';
import 'package:task/core/themes/color_app.dart';
import 'package:task/core/themes/styles.dart';
import 'package:task/features/login/presentation/views/widgets/name_textfield.dart';
import 'package:task/features/login/presentation/views/widgets/password_textfield.dart';
import 'package:task/features/login/presentation/views/widgets/phone_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  
  State<RegisterScreen> createState() => _RegisterScreenState();
}
  GlobalKey<FormState> globalKey = GlobalKey();
  bool isvisible=false; 
  bool isvisiblecomfirm=false; 
   String?  password,Confirmpass,name,phone;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text('Name'),
           NameTextfield(
                         onChanged: (value) {
                          name=value;
                          
                        },
                      ),
          const SizedBox(height: 15),
          const Text('Phone Number'),
          
             PhoneTextfield(
                onChanged: (value) {
                          phone=value;
                          
                        },
             ),
           
          
          const SizedBox(height: 15),
          const Text('Password'),
          PasswordTextfield(
             onChanged: (value) {
                          password=value;
                          
                        },
                          isobscure: !isvisible,
                          togglevisibility: () {
                           setState(() {
                              isvisible = !isvisible;
                            });
                          },
                          isvisible: isvisible,
                          ),
         
          
          const SizedBox(height: 15),
          const Text('Confirm Password'),
           PasswordTextfield(
             onChanged: (value) {
                          Confirmpass=value;
                          
                        },
                          isobscure: !isvisiblecomfirm,
                          togglevisibility: () {
                           setState(() {
                              isvisiblecomfirm = !isvisiblecomfirm;
                            });
                          },
                          isvisible: isvisiblecomfirm,
                          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Checkbox(shape: CircleBorder(),value: false, onChanged: (value) {}),
              Column(children: [
               Text('I have read and agreed to the ',style:  Styles.textStyle15.copyWith(color: Colors.grey)),
                 Row(
            children: [
              Text(
                'Terms',
                style:  Styles.textStyle15.copyWith(color: ColorApp.kBlueColor, decoration: TextDecoration.underline,decorationColor:ColorApp.kBlueColor ),
              ),
               Text(' and ',style:  Styles.textStyle15),
              Text(
                'Privacy Policy',
                style: Styles.textStyle15.copyWith(color: ColorApp.kBlueColor, decoration: TextDecoration.underline,decorationColor:ColorApp.kBlueColor),
              ),
            ],
          ),]),]),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(20)
              ),
              child: Text('Register',style:  Styles.textStyle16.copyWith(color: const Color.fromARGB(255, 181, 182, 177),fontWeight: FontWeight.w600)),
            ),
          ),
           const SizedBox(height: 25),
        ],
      ),
    );
  }

  
}