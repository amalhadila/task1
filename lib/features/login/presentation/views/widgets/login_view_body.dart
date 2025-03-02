import 'package:flutter/material.dart';
import 'package:task/core/themes/color_app.dart';
import 'package:task/core/themes/styles.dart';
import 'package:task/features/login/presentation/views/widgets/register_screen.dart';
import 'package:task/features/login/presentation/views/widgets/sign_in_screen.dart';

class LoginViewBody extends StatefulWidget {
  @override
  _LoginViewBodyState createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 252, 249, 249),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Image.asset('assets/images/logo_text.png', height: 80),
            const SizedBox(height: 10),
             Text(
              'Welcome to equina',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
            ),
             Text(
              'equinaCLUB, book your classes - advance your game.',
              textAlign: TextAlign.center,
              style:  Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            TabBar(
              controller: _tabController,
              indicatorColor: ColorApp.kBlueColor,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: 'Sign In'),
                Tab(text: 'Register'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SignInScreen(),
                  RegisterScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
    }
  