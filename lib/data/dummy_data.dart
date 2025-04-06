import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/core/resources/image_res.dart';
import 'package:cred_pal_task/data/model/item_dto.dart';
import 'package:cred_pal_task/data/model/merchant_dto.dart';
import 'package:flutter/material.dart' show Colors;

final rollOneItems = <ItemDto>[
  ItemDto(
    imageUrl: rollOneItem1,
    itemName: 'Nokia G20',
    itemPrice: 39780,
    itemOriginalPrice: 88000,
    badgeData: const BadgeData(title: 'Pay', subtitle: '40%'),
  ),
  ItemDto(
    imageUrl: rollOneItem2,
    itemName: 'iPhone XS Max 4GB Smartphone',
    itemPrice: 295999,
    itemOriginalPrice: 315000,
    badgeImage: rollOneBadge2,
  ),
  ItemDto(
    imageUrl: rollOneItem3,
    itemName: 'Masterchef Pressure Pot',
    itemPrice: 39780,
    itemOriginalPrice: 88000,
    badgeImage: rollOneBadge2,
  ),
];

final rollTwoItems = <ItemDto>[
  ItemDto(
    imageUrl: rollTwoItem1,
    itemName: 'Nokia G20',
    itemPrice: 39780,
    itemOriginalPrice: 88000,
    badgeImage: rollTwoBadge1,
  ),
  ItemDto(
    imageUrl: rollTwoItem2,
    itemName: 'iPhone XS Max 4GB Smartphone',
    itemPrice: 295999,
    itemOriginalPrice: 315000,
    badgeImage: rollTwoBadge2,
  ),
  ItemDto(
    imageUrl: rollOneItem3,
    itemName: 'Masterchef Pressure Pot',
    itemPrice: 39780,
    itemOriginalPrice: 88000,
    badgeImage: rollTwoBadge2,
  ),
];

final merchantsList = <MerchantDto>[
  MerchantDto(
    merchantColor: AppColor.deepBlue20,
    merchantLogo: merchant1Logo,
    merchantName: 'Justrite',
    isActive: true,
  ),
  MerchantDto(
    merchantImage: merchant2Img,
    merchantName: 'Orile Restaurant',
    isActive: true,
  ),
  MerchantDto(
    merchantImage: merchant3Img,
    merchantName: 'Slot',
    isActive: true,
  ),
  MerchantDto(
    merchantLogo: merchant4Logo,
    merchantColor: AppColor.blue20,
    merchantName: 'Pointek',
    isActive: true,
  ),
  MerchantDto(
    merchantImage: merchant5Img,
    merchantName: 'ogabassey',
    isActive: true,
  ),
  MerchantDto(
    merchantLogo: merchant6Logo,
    merchantColor: AppColor.red10,
    merchantName: 'Casper Stores',
    isActive: false,
  ),
  MerchantDto(
    merchantImage: merchant7Img,
    merchantName: 'Dreamworks',
    isActive: false,
  ),
  MerchantDto(
    merchantLogo: merchant8Logo,
    merchantColor: AppColor.purple10,
    merchantName: 'Hubmart',
    isActive: true,
  ),
  MerchantDto(
    merchantImage: merchant9Img,
    merchantName: 'Just Used',
    isActive: true,
  ),
  MerchantDto(
    merchantLogo: merchant10Logo,
    merchantColor: Colors.black,
    merchantName: 'Just fones',
    isActive: true,
  ),
];
