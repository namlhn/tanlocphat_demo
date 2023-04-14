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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Tin tức',
          style: boldTextStyle(),
        ),
      ),
      body: CustomScrollView(
        slivers: [

          SliverFillRemaining(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                20.height,
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount:1 ,
                    itemBuilder: (_, index) {


                      return Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: boxDecorationRoundedWithShadow(35, backgroundColor: context.cardColor),
                            child: commonCachedNetworkImage('https://www.doanhnghiepvadoisong.com.vn/uploads/images/setting/huyhoang/2021/11/16/logo-chinh-1637044572.png?ver=1679627619', fit: BoxFit.contain, height: 80, width: 75).cornerRadiusWithClipRRect(35),
                          ),
                          8.height,
                        ],
                      ).onTap(() {

                      }, highlightColor: white, splashColor: white).paddingOnly(left: 8, right: 8, top: 8);
                    },
                  ),
                ),
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
                                style: boldTextStyle())
                            .validate(),
                      ),
                      8.height,
                      Text('Sáng 14/4, Công ty GSM và UBND TP Hà Nôi chính thức đưa dịch vụ taxi thuần điện đầu tiên tại Việt Nam vào hoạt động. Giá mở cửa cho 1 km đầu tiên của dịch vụ GreenCar là 20.000 đồng.',
                              style: secondaryTextStyle(size: 16))
                          .validate(),
                      5.height,
                      Row(
                        children: [
                          Text('14/04/2023 18:07',
                                  style: secondaryTextStyle().copyWith(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey))
                              .expand(),
                        ],
                      ),
                    ],
                  ),
                ).onTap(() {}, highlightColor: white, splashColor: white),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Column(
                    children: [
                      Hero(
                        tag: 'hello',
                        child: commonCachedNetworkImage(
                            'https://doanhnghiepvadoisong.com.vn/uploads/images/2023/04/14/xe-tai-hyundai-nhap-khau-nguyen-chiec-tu-han-quoc-la-lua-chon-hang-dau-hien-nay-tai-viet-nam-143957-1232-1681459362.jpeg',
                            fit: BoxFit.cover)
                            .validate()
                            .cornerRadiusWithClipRRect(10),
                      ),
                      8.height,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            'Ôtô nhập khẩu từ Trung Quốc ồ ạt về Việt Nam',
                            style: boldTextStyle())
                            .validate(),
                      ),
                      8.height,
                      Text('Lũy kế 3 tháng đầu năm, tổng kim ngạch nhập khẩu ôtô nguyên chiếc đạt 41.190 chiếc (tổng trị giá 883 triệu USD), tăng 57% về giá trị so với năm ngoái..',
                          style: secondaryTextStyle(size: 16))
                          .validate(),
                      5.height,
                      Row(
                        children: [
                          Text('14/04/2023 18:07',
                              style: secondaryTextStyle().copyWith(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey))
                              .expand(),
                        ],
                      ),
                    ],
                  ),
                ).onTap(() {}, highlightColor: white, splashColor: white),
                30.height
              ],
            ),
          )
        ],
      ),
    );
  }
}
