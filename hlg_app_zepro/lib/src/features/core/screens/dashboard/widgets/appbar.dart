

import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/repository/authentication_repository/exceptions/authentication_repository.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        tAppName,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logout();
            },
            icon: Image(image: AssetImage(tUserProfileImage)),
          ),
        )
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(55);
}
