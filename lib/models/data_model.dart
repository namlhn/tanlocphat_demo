import 'package:flutter/cupertino.dart';

import '../helps/rescolors.dart';

class ESModel {
  final String title;
  final String subTitle;
  final String image;
  final String urlLink;

  ESModel({required this.urlLink,
      required this.title,
      required this.subTitle,
      required this.image});
}

List<ESModel> esGetBasicData() {
  List<ESModel> list = [];
  list.add(ESModel(
      title: 'Doanh Nghiệp và Đời Sống',
      subTitle: 'Chuyên trang báo về doanh nghiệp và đời sống',
      image: 'assets/images/doanhnghiepdoisong.png', urlLink: 'https://doanhnghiepvadoisong.com.vn/',));

  list.add(ESModel(
    title: 'Truyền hình TV',
    subTitle: 'Kênh truyền hình',
    image: 'assets/images/truyenhinh.png', urlLink: 'https://www.youtube.com/@kenhtruyenhinhtamlocphattv7299',));
  list.add(ESModel(
    title: 'Phim ảnh',
    subTitle: 'Trang phim ảnh',
    image: 'assets/images/phim.png', urlLink: 'https://www.youtube.com/watch?v=tp0T9w3AG8g&list=PLLRa9wt9OTrbX5N_PFepPWHXrFSJCafQ3',));
  return list;
}
