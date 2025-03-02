import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final VoidCallback? onTap;

  const ListItem({
    Key? key,
    required this.image,
    required this.title,
    this.color = Colors.purple,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
       
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration( color: color,borderRadius: BorderRadius.circular(10)),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8).r,
          child: Image.asset(image,width: 30.w,height: 30.h,),
        ))),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
