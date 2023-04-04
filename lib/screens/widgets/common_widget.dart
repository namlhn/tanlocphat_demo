import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../helps/rescolors.dart';

Widget searchTextField({BuildContext? context, Function? onTap}) {
  return Container(
    decoration: boxDecorationWithShadow(
      backgroundColor: white,
      borderRadius: radius(8),
    ),
    child: AppTextField(
      // controller: searchController,
      textFieldType: TextFieldType.OTHER,
      textStyle: secondaryTextStyle(color: black),
      autoFocus: false,
      readOnly: true,
      onTap: () {
        onTap!();
      },
      decoration: InputDecoration(
        fillColor: white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        filled: true,
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        hintText: 'Tìm kiếm chủ đề yêu thích',
        hintStyle: secondaryTextStyle(),
        prefixIcon: const Icon(Icons.search, color: ESSecondaryColor),
      ),
    ).cornerRadiusWithClipRRect(8).paddingOnly(left: 16, right: 16),
  );
}


Widget dashboardLabelsAndSeeAll({String? label, Function()? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(label!, style: primaryTextStyle(size: 18)),
      TextButton(
        onPressed: onTap!,
        child: Row(
          children: [

          ],
        ),
      )
    ],
  );
}

Widget cachedImage(String url, {double? height, double? width, BoxFit? fit, AlignmentGeometry? alignment, bool usePlaceholderIfUrlEmpty = true, double? radius}) {
  if (url.validate().isEmpty) {
    return placeHolderWidget(height: height!, width: width!, fit: fit!, alignment: alignment, radius: radius);
  } else if (url.validate().startsWith('http')) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      alignment: Alignment.center,
      errorWidget: (_, s, d) {
        return placeHolderWidget(height: height!, width: width!, fit: fit!, alignment: alignment!, radius: radius);
      },
      placeholder: (_, s) {
        if (!usePlaceholderIfUrlEmpty) return const SizedBox();
        return placeHolderWidget(height: height!, width: width!, fit: fit!, alignment: alignment!, radius: radius);
      },
    );
  } else {
    return Image.asset(url, height: height, width: width, fit: fit, alignment: alignment ?? Alignment.center).cornerRadiusWithClipRRect(radius ?? defaultRadius);
  }
}


Widget placeHolderWidget({double? height, double? width, BoxFit? fit, AlignmentGeometry? alignment, double? radius}) {
  return Image.asset('', height: height, width: width, fit: fit ?? BoxFit.cover, alignment: alignment ?? Alignment.center).cornerRadiusWithClipRRect(radius ?? defaultRadius);
}