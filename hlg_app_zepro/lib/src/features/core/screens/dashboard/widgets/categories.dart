import 'package:flutter/material.dart';
import 'package:hlg_app_zepro/src/features/core/models/dashboard/categories_model.dart';

import '../../../../../constants/colors.dart';


class Catergories extends StatelessWidget {
  const Catergories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = DashBoardCategories.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tDarkColor),
                  child: Center(
                      child: Text(
                    list[index].title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        list[index].subHeading,
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor),
        //           child: Center(
        //               child: Text(
        //             'JS',
        //             style: TextStyle(
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white),
        //           )),
        //         ),
        //         SizedBox(
        //           width: 5,
        //         ),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: TextStyle(
        //                     fontSize: 16, fontWeight: FontWeight.bold),
        //               ),
        //               Text(
        //                 '10 lesson',
        //                 style: TextStyle(fontSize: 14),
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor),
        //           child: Center(
        //               child: Text(
        //             'JS',
        //             style: TextStyle(
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white),
        //           )),
        //         ),
        //         SizedBox(
        //           width: 5,
        //         ),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: TextStyle(
        //                     fontSize: 16, fontWeight: FontWeight.bold),
        //               ),
        //               Text(
        //                 '10 lesson',
        //                 style: TextStyle(fontSize: 14),
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor),
        //           child: Center(
        //               child: Text(
        //             'JS',
        //             style: TextStyle(
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white),
        //           )),
        //         ),
        //         SizedBox(
        //           width: 5,
        //         ),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: TextStyle(
        //                     fontSize: 16, fontWeight: FontWeight.bold),
        //               ),
        //               Text(
        //                 '10 lesson',
        //                 style: TextStyle(fontSize: 14),
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
