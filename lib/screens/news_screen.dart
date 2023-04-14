import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tamlocphat_app/screens/widgets/common_widget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Tin tức',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Column(
                    children: [
                      Hero(
                        tag: 'hello',
                        child: commonCachedNetworkImage(
                                'https://doanhnghiepvadoisong.com.vn/uploads/images/2023/04/14/9df81c8c-ecbc-4a45-834f-893b8bf2d8ba-1623-1681470400.jpeg',
                                fit: BoxFit.cover)
                            .validate()
                            .cornerRadiusWithClipRRect(10),
                      ),
                      8.height,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                                'Taxi điện đầu tiên của Việt Nam chính thức hoạt động',
                                style: secondaryTextStyle())
                            .validate(),
                      ),
                      8.height,
                      Text('Sáng 14/4, Công ty GSM và UBND TP Hà Nôi chính thức đưa dịch vụ taxi thuần điện đầu tiên tại Việt Nam vào hoạt động. Giá mở cửa cho 1 km đầu tiên của dịch vụ GreenCar là 20.000 đồng.',
                              style: boldTextStyle())
                          .validate(),
                      Row(
                        children: [
                          Text('14/04/2023 18:07', style: secondaryTextStyle())
                              .expand(),
                        ],
                      ),
                    ],
                  ),
                ).onTap(() {}, highlightColor: white, splashColor: white)
              ],
            ),
          )
        ],
      ),
    );
  }
}
