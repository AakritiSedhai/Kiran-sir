import 'package:flutter/material.dart';
import 'package:student_management/Common/list_tile_widget.dart';
// import 'package:new_project/common/list_tile_widget.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.compare_arrows_sharp,
                color: Colors.red,
              ),
              Text(
                "Discover",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        body: Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTileWidget(
                  index: 1,
                  assetURL: 'assets/images/image_2.png',
                  assetURL2: 'assets/images/image_1.jpeg',
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 6),
        )
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       for (int i = 0; i <= 100; i++) ...{
        //         ListTileWidget(
        //           index: i,
        //           assetURL: 'assets/images/image_1.jpeg',
        //           assetURL2: 'assets/images/image_2.png',
        //         ),
        //         const Divider(),
        //       },
        //     ],
        //   ),
        // ),
        );
    // body: ListTileWidget(assetURL: "assets/images/image_1.jpeg"));
  }
}