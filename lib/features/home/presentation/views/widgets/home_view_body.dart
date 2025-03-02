import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/shared_widgets/CustomErrorWidget.dart';
import 'package:task/core/shared_widgets/LoadingWidget.dart';
import 'package:task/core/themes/color_app.dart';
import 'package:task/features/home/presentation/manager/cubit/fetch_home_items_cubit.dart';
import 'package:task/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:task/features/profile/presentation/views/profile_view.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/logo_text.png',
          height: 30.h,
        ),
        actions: [
          Container(
              width: 30.w,
              height: 30.h,
              padding: EdgeInsets.all(6).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffa0a5c1)),
              child: Image.asset(
                'assets/images/family.png',
                width: 30.w,
                height: 30.h,
              )),
          SizedBox(
            width: 10.w,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/notification.png',
              width: 30.w,
              height: 30.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileView()));
            },
            child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 30.w,
                  height: 30.h,
                )),
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: ColorApp.kLightGreyColor),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/search_icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: ColorApp.kLightGreyColor)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/images/filter.png',
                  width: 45.w,
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<FetchHomeItemsCubit, FetchHomeItemsState>(
              builder: (context, state) {
                 if (state is FetchHomeItemsSuccess) {
                return ListView.builder(
                  itemCount:state.homelist.length,
                  itemBuilder: (context, index) {
                    final homeitem = state.homelist[index];
                    return ListViewItem(home_item: homeitem,);
                  },
                );} else if (state is FetchHomeItemsFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: LoadingWidget());
        }
              },
            ),
          ),
        ],
      ),
    );
  }
}
