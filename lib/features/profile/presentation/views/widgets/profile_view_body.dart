import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/profile/presentation/views/widgets/list_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return       Column(
        children: [
          SizedBox(height: 20),
           Container(
              width: 63.w,
              height: 68.h,
              decoration:BoxDecoration(color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10)
            ),child: Icon(Icons.person, size: 50, color: Colors.white)),
         
          SizedBox(height: 10),
          Text('Equina User', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ListView(
                children: const[
                 ListItem(image:'assets/images/edit_profile.png', title:'Edit Profile'),
                 ListItem(image:'assets/images/points.png', title: 'My Points'),
                 ListItem(image:'assets/images/notification.png', title: 'My Notifications'),
                 ListItem(image:'assets/images/family.png', title: 'Manage Family'),
                 ListItem(image:'assets/images/book.png', title: 'Livery Settings'),
                 ListItem(image:'assets/images/medical_report.png', title: 'Fill Medical Report'),
                 ListItem(image:'assets/images/clipboard.png', title:'Fill Club Application'),
                 ListItem(image:'assets/images/bill.png', title: 'Billing Details'),
                 ListItem(image:'assets/images/idea.png', title: 'Tutorial Guides'),
                 ListItem(image:'assets/images/edit_profile.png', title: 'Information'),
                 ListItem(image:'assets/images/contact-us.png', title: 'Contact US'),
                  Divider(),
                 ListItem(image:'assets/images/logout.png', title: 'Log Out', color: Colors.red),
                ],
              ),
            ),
          ),
        ],
      
    );
  
  }
}