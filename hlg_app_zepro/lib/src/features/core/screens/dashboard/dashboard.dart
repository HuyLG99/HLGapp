import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:hlg_app_zepro/src/constants/sizes.dart";
import "package:hlg_app_zepro/src/constants/text_strings.dart";
import "package:hlg_app_zepro/src/features/core/screens/dashboard/widgets/banner.dart";
import "package:hlg_app_zepro/src/features/core/screens/dashboard/widgets/top_coures.dart";

import "widgets/appbar.dart";
import "widgets/categories.dart";
import "widgets/search.dart";

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(tDashboardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              tDashboardTitle,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              tDashboardHeading,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: tDashboardPadding),

            //Search Box
            Search(),
            SizedBox(height: tDashboardPadding),

            //Categories
            Catergories(),
            SizedBox(
              height: tDashboardPadding,
            ),

            //Banner
            BannerWidget(),
            SizedBox(
              height: tDashboardPadding,
            ),

            //Top Course
            Text(
              tDashBoardTopCourses,
              style: GoogleFonts.montserrat(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            TopCoures(),
          ],
        ),
      )),
    );
  }
}
