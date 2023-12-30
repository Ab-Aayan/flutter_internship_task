import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(255, 182, 161, 161),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AvatarView(
                  radius: 28,
                  borderWidth: 2,
                  borderColor: Colors.yellow,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath: "assets/av_img.jpg",
                  placeHolder: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  errorWidget: Icon(
                    Icons.error,
                    size: 50,
                  ),
                ),
                const SizedBox(width: 66),
                Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Row(children: [
                    IconBtnWithCounter(
                      svgSrc: "assets/icons/Cart Icon.svg",
                      press: () {},
                    ),
                    const SizedBox(width: 6),
                    IconBtnWithCounter(
                      svgSrc: "assets/icons/Bell.svg",
                      press: () {},
                    ),
                  ]),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(child: SearchField()),
            ),
          ],
        ),
      ),
    );
  }
}
