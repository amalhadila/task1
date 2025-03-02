import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/color_app.dart';
import 'package:task/core/themes/styles.dart';
import 'package:task/features/home/data/models/home_model.dart';
import 'package:task/features/home/presentation/views/widgets/rating.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key,required this.home_item});
  final HomeModel home_item ; 

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: SizedBox(
                    height: 300.h,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(90),topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(90)),
                      ),
                      child: Row(                        
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              decoration:  const BoxDecoration(
                                color: ColorApp.kBlueColor,
                                borderRadius: BorderRadius.only(
                                                         topLeft: Radius.circular(90),bottomLeft: Radius.circular(20),

                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  const EdgeInsets.only(top:15,bottom: 10,right: 10,left: 40).r,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          home_item.name??'',
                                          style: Styles.textStyle16.copyWith(color: Colors.white)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 5).r,
                                          child: Container(
                                             padding: EdgeInsets.all(2).r,
                                             width: double.infinity,
                                          decoration:BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                home_item.clubName??'',
                                                overflow: TextOverflow.ellipsis,
                                                style: Styles.textStyle16.copyWith(color: ColorApp.kBlueColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Description: ${home_item.description}',
                                          overflow: TextOverflow.ellipsis,
                                          style: Styles.textStyle14.copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          'Type: ${home_item.lessontype}',
                                          overflow: TextOverflow.ellipsis,
                                          style:Styles.textStyle14.copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          'Class Duration: ${home_item.classDuration}',
                                          overflow: TextOverflow.ellipsis,
                                          style: Styles.textStyle14.copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          'Number Of Classes: ${home_item.numOfClasses}',
                                          overflow: TextOverflow.ellipsis,
                                          style: Styles.textStyle14.copyWith(color: Colors.white),
                                        ),
                                         SizedBox(height: 10.h),
                                        
                                         
                                         
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                           children: [
                                             Container(
                                                   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
                                                  decoration:BoxDecoration(
                                                color: Colors.purple.withOpacity(0.5),
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                              ),
                                                  child: Text(
                                                    'Starting from \n100 AED',
                                                    style:Styles.textStyle14.copyWith(color: Colors.white),
                                                  ),
                                                ),
                                                SizedBox(width: 5.h),
                                                Expanded(
                                                  child: SizedBox(
                                                    height: 40.h, 
                                                    child: ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      physics: const BouncingScrollPhysics(),
                                                      itemCount: home_item.days!.length,
                                                      itemBuilder: (context, index) {
                                                        return Center(
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2).r,
                                                            child: Chip(
                                                              side: const BorderSide(style: BorderStyle.none),
                                                              label: Text(
                                                                home_item.days![index],
                                                                style: Styles.textStyle12,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                           ],
                                         ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                                         topRight: Radius.circular(20),bottomRight: Radius.circular(90),

                                  ),
                                  child: Expanded(
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 300.h,
                                      child: Image.network(
                                      home_item.imageUrl ?? '', 
                                                                     
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return  Icon(Icons.image_not_supported, size: 50, color: Colors.grey);
                                      },
                                                                    ),
                                    ),
                                  )
                                ),
                                Positioned(
                                  top: 10,
                                  right: 5,
                                  child:Rating()),
                                Positioned(
                                  bottom: 15,
                                  left: 5,
                                  child: Container(
                                    padding: EdgeInsets.all(2).r,
                                    decoration:BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3).r,
                                      decoration: BoxDecoration(
                                        color: Colors.purple.withOpacity(.5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Buy and Get\n5%',
                                        style:Styles.textStyle12.copyWith(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }
}