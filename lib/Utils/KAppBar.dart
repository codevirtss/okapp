import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class KAppBar extends StatelessWidget {
  final String title;
  const KAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(12.0.sp),
                margin:
                    EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 1.0.h),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(15.0.sp)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                    ]),
                child: Icon(
                  Icons.arrow_back,
                  size: 20.0.sp,
                  color: const Color(0xff666687),
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0.sp),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
      ],
    );
  }
}
