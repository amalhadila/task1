import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/login/presentation/login_view.dart';

void main() async {
   await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
       scaffoldBackgroundColor:  const Color.fromARGB(255, 252, 249, 249),
       appBarTheme: AppBarTheme(backgroundColor:  const Color.fromARGB(255, 252, 249, 249),)
      ),
      home: const LoginView(),
    );});
  }
}

