import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tamlocphat_app/screens/widgets/common_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/data_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ESModel> listCats = esGetBasicData();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: const Color(0xffe77843).withOpacity(0.2),
      // navigation bar color
      statusBarColor: const Color(0xffe77843).withOpacity(0.5), // status bar color
    ));

    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: radius(0),
              color: const Color(0xffe77843).withOpacity(0.5)),
          child: Column(
            children: [
              SettingItemWidget(
                title: 'Tam Lộc Phát TV',
                titleTextColor: const Color(0xffda251c),
                titleTextStyle: boldTextStyle(size: 20),
                subTitle: 'Ứng dụng giải trí truyền hình',
                leading: Image.asset(
                  'assets/images/logo.png',
                  height: 46,
                ),
              ),
              searchTextField(
                context: context,
                onTap: () {},
              ).paddingSymmetric(horizontal: 16),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.height,
            dashboardLabelsAndSeeAll(
              label: "Danh mục yêu thích",
              onTap: () {},
            ).paddingSymmetric(horizontal: 16),
            AlignedGridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              itemBuilder: (context, index) => itemGird(listCats[index]),
              itemCount: listCats.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    ));
  }

  Widget itemGird(ESModel info) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: boxDecorationWithShadow(
        borderRadius: radius(8),
        blurRadius: 0.2,
        shadowColor: Colors.red.withOpacity(0.1),
        backgroundColor: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cachedImage(info.image.validate(),
              width: 150, height: 100, fit: BoxFit.cover),
          8.height,
          Text(info.title.validate(), style: primaryTextStyle()),
        ],
      ),
    ).onTap(
      () => _launchUrl(info.urlLink),
      highlightColor: context.cardColor,
    );
  }

  Future<void> _launchUrl(String strUrl) async {
    final Uri _url = Uri.parse(strUrl);

    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }
}
