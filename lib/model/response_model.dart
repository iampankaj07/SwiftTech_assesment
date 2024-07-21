class ResponseModel {
  Data? data;

  ResponseModel({this.data});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? responseCode;
  ResponseData? responseData;
  String? currentBalance;
  String? responseDescription;
  String? referenceID;

  Data(
      {this.responseCode,
      this.responseData,
      this.currentBalance,
      this.responseDescription,
      this.referenceID});

  Data.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    responseData = json['ResponseData'] != null
        ? ResponseData.fromJson(json['ResponseData'])
        : null;
    currentBalance = json['CurrentBalance'];
    responseDescription = json['ResponseDescription'];
    referenceID = json['ReferenceID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ResponseCode'] = responseCode;
    if (responseData != null) {
      data['ResponseData'] = responseData!.toJson();
    }
    data['CurrentBalance'] = currentBalance;
    data['ResponseDescription'] = responseDescription;
    data['ReferenceID'] = referenceID;
    return data;
  }
}

class ResponseData {
  WalletDetails? walletDetails;
  RewardDetails? rewardDetails;
  UserInfo? userInfo;
  MenuDetails? menuDetails;

  ResponseData(
      {this.walletDetails,
      this.rewardDetails,
      this.userInfo,
      this.menuDetails});

  ResponseData.fromJson(Map<String, dynamic> json) {
    walletDetails = json['WalletDetails'] != null
        ? WalletDetails.fromJson(json['WalletDetails'])
        : null;
    rewardDetails = json['RewardDetails'] != null
        ? RewardDetails.fromJson(json['RewardDetails'])
        : null;
    userInfo = json['UserInfo'] != null
        ? UserInfo.fromJson(json['UserInfo'])
        : null;
    menuDetails = json['MenuDetails'] != null
        ? MenuDetails.fromJson(json['MenuDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (walletDetails != null) {
      data['WalletDetails'] = walletDetails!.toJson();
    }
    if (rewardDetails != null) {
      data['RewardDetails'] = rewardDetails!.toJson();
    }
    if (userInfo != null) {
      data['UserInfo'] = userInfo!.toJson();
    }
    if (menuDetails != null) {
      data['MenuDetails'] = menuDetails!.toJson();
    }
    return data;
  }
}

class WalletDetails {
  String? memberType;
  String? amount;
  String? interestAmount;
  String? totalCreditPoints;
  String? interestDate;
  String? status;

  WalletDetails(
      {this.memberType,
      this.amount,
      this.interestAmount,
      this.totalCreditPoints,
      this.interestDate,
      this.status});

  WalletDetails.fromJson(Map<String, dynamic> json) {
    memberType = json['MemberType'];
    amount = json['Amount'];
    interestAmount = json['InterestAmount'];
    totalCreditPoints = json['TotalCreditPoints'];
    interestDate = json['InterestDate'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MemberType'] = memberType;
    data['Amount'] = amount;
    data['InterestAmount'] = interestAmount;
    data['TotalCreditPoints'] = totalCreditPoints;
    data['InterestDate'] = interestDate;
    data['Status'] = status;
    return data;
  }
}

class RewardDetails {
  int? currentCredits;
  String? memberType;
  String? msisdn;

  RewardDetails({this.currentCredits, this.memberType, this.msisdn});

  RewardDetails.fromJson(Map<String, dynamic> json) {
    currentCredits = json['CurrentCredits'];
    memberType = json['MemberType'];
    msisdn = json['Msisdn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CurrentCredits'] = currentCredits;
    data['MemberType'] = memberType;
    data['Msisdn'] = msisdn;
    return data;
  }
}

class UserInfo {
  String? profileImage;
  String? dob;
  bool? isEmailVerified;
  String? dobDateFormat;
  String? msisdn;
  String? accCode;
  String? kYCApproved;
  String? userType;
  bool? isNomineeAdded;
  String? checkUpdate;
  bool? isPinSet;
  bool? isRaffle;
  String? nfcCardNo;
  String? userFullName;
  bool? isSahayatri;
  String? qrPayload;
  String? gender;
  String? email;
  bool? isSahayatriEnabled;
  String? walletType;

  UserInfo(
      {this.profileImage,
      this.dob,
      this.isEmailVerified,
      this.dobDateFormat,
      this.msisdn,
      this.accCode,
      this.kYCApproved,
      this.userType,
      this.isNomineeAdded,
      this.checkUpdate,
      this.isPinSet,
      this.isRaffle,
      this.nfcCardNo,
      this.userFullName,
      this.isSahayatri,
      this.qrPayload,
      this.gender,
      this.email,
      this.isSahayatriEnabled,
      this.walletType});

  UserInfo.fromJson(Map<String, dynamic> json) {
    profileImage = json['ProfileImage'];
    dob = json['Dob'];
    isEmailVerified = json['IsEmailVerified'];
    dobDateFormat = json['DobDateFormat'];
    msisdn = json['Msisdn'];
    accCode = json['AccCode'];
    kYCApproved = json['KYCApproved'];
    userType = json['UserType'];
    isNomineeAdded = json['IsNomineeAdded'];
    checkUpdate = json['CheckUpdate'];
    isPinSet = json['IsPinSet'];
    isRaffle = json['IsRaffle'];
    nfcCardNo = json['NfcCardNo'];
    userFullName = json['UserFullName'];
    isSahayatri = json['IsSahayatri'];
    qrPayload = json['QrPayload'];
    gender = json['Gender'];
    email = json['Email'];
    isSahayatriEnabled = json['IsSahayatriEnabled'];
    walletType = json['WalletType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ProfileImage'] = profileImage;
    data['Dob'] = dob;
    data['IsEmailVerified'] = isEmailVerified;
    data['DobDateFormat'] = dobDateFormat;
    data['Msisdn'] = msisdn;
    data['AccCode'] = accCode;
    data['KYCApproved'] = kYCApproved;
    data['UserType'] = userType;
    data['IsNomineeAdded'] = isNomineeAdded;
    data['CheckUpdate'] = checkUpdate;
    data['IsPinSet'] = isPinSet;
    data['IsRaffle'] = isRaffle;
    data['NfcCardNo'] = nfcCardNo;
    data['UserFullName'] = userFullName;
    data['IsSahayatri'] = isSahayatri;
    data['QrPayload'] = qrPayload;
    data['Gender'] = gender;
    data['Email'] = email;
    data['IsSahayatriEnabled'] = isSahayatriEnabled;
    data['WalletType'] = walletType;
    return data;
  }
}

class MenuDetails {
  List<HomeMenu>? homeMenu;
  HomeMenu? footerMenu;
  HomeMenu? headerMenu;

  MenuDetails({this.homeMenu, this.footerMenu, this.headerMenu});

  MenuDetails.fromJson(Map<String, dynamic> json) {
    if (json['HomeMenu'] != null) {
      homeMenu = <HomeMenu>[];
      json['HomeMenu'].forEach((v) {
        homeMenu!.add(HomeMenu.fromJson(v));
      });
    }
    footerMenu = json['FooterMenu'] != null
        ? HomeMenu.fromJson(json['FooterMenu'])
        : null;
    headerMenu = json['HeaderMenu'] != null
        ? HomeMenu.fromJson(json['HeaderMenu'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homeMenu != null) {
      data['HomeMenu'] = homeMenu!.map((v) => v.toJson()).toList();
    }
    if (footerMenu != null) {
      data['FooterMenu'] = footerMenu!.toJson();
    }
    if (headerMenu != null) {
      data['HeaderMenu'] = headerMenu!.toJson();
    }
    return data;
  }
}

class HomeMenu {
  String? categoryTitleEng;
  List<CategoryContent>? categoryContent;
  String? categoryTitle;
  int? displayOrder;
  int? categoryTheme;
  String? promotionalTxt;

  HomeMenu(
      {this.categoryTitleEng,
      this.categoryContent,
      this.categoryTitle,
      this.displayOrder,
      this.categoryTheme,
      this.promotionalTxt});

  HomeMenu.fromJson(Map<String, dynamic> json) {
    categoryTitleEng = json['CategoryTitleEng'];
    if (json['CategoryContent'] != null) {
      categoryContent = <CategoryContent>[];
      json['CategoryContent'].forEach((v) {
        categoryContent!.add(CategoryContent.fromJson(v));
      });
    }
    categoryTitle = json['CategoryTitle'];
    displayOrder = json['DisplayOrder'];
    categoryTheme = json['CategoryTheme'];
    promotionalTxt = json['PromotionalTxt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CategoryTitleEng'] = categoryTitleEng;
    if (categoryContent != null) {
      data['CategoryContent'] =
          categoryContent!.map((v) => v.toJson()).toList();
    }
    data['CategoryTitle'] = categoryTitle;
    data['DisplayOrder'] = displayOrder;
    data['CategoryTheme'] = categoryTheme;
    data['PromotionalTxt'] = promotionalTxt;
    return data;
  }
}

class CategoryContent {
  String? promotionalTxt;
  String? redirectionValue;
  String? btnIcon;
  String? transactionId;
  String? subTitle;
  bool? isDisabled;
  String? title;
  String? btnLabel;
  List<SubCategory>? subCategory;
  String? redirectionModule;
  int? displayOrder;
  Null data;
  String? redirectionType;
  String? icon;
  String? titleEng;
  String? disableMesg;

  CategoryContent(
      {this.promotionalTxt,
      this.redirectionValue,
      this.btnIcon,
      this.transactionId,
      this.subTitle,
      this.isDisabled,
      this.title,
      this.btnLabel,
      this.subCategory,
      this.redirectionModule,
      this.displayOrder,
      this.data,
      this.redirectionType,
      this.icon,
      this.titleEng,
      this.disableMesg});

  CategoryContent.fromJson(Map<String, dynamic> json) {
    promotionalTxt = json['PromotionalTxt'];
    redirectionValue = json['RedirectionValue'];
    btnIcon = json['BtnIcon'];
    transactionId = json['TransactionId'];
    subTitle = json['SubTitle'];
    isDisabled = json['IsDisabled'];
    title = json['Title'];
    btnLabel = json['BtnLabel'];
    if (json['SubCategory'] != null) {
      subCategory = <SubCategory>[];
      json['SubCategory'].forEach((v) {
        subCategory!.add(SubCategory.fromJson(v));
      });
    }
    redirectionModule = json['RedirectionModule'];
    displayOrder = json['DisplayOrder'];
    data = json['Data'];
    redirectionType = json['RedirectionType'];
    icon = json['Icon'];
    titleEng = json['TitleEng'];
    disableMesg = json['DisableMesg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PromotionalTxt'] = promotionalTxt;
    data['RedirectionValue'] = redirectionValue;
    data['BtnIcon'] = btnIcon;
    data['TransactionId'] = transactionId;
    data['SubTitle'] = subTitle;
    data['IsDisabled'] = isDisabled;
    data['Title'] = title;
    data['BtnLabel'] = btnLabel;
    if (subCategory != null) {
      data['SubCategory'] = subCategory!.map((v) => v.toJson()).toList();
    }
    data['RedirectionModule'] = redirectionModule;
    data['DisplayOrder'] = displayOrder;
    data['Data'] = this.data;
    data['RedirectionType'] = redirectionType;
    data['Icon'] = icon;
    data['TitleEng'] = titleEng;
    data['DisableMesg'] = disableMesg;
    return data;
  }
}

class SubCategory {
  String? disableMesg;
  String? promotionalTxt;
  String? redirectionModule;
  bool? isDisabled;
  String? titleEng;
  String? redirectionType;
  String? redirectionValue;
  int? displayOrder;
  String? icon;
  String? title;

  SubCategory(
      {this.disableMesg,
      this.promotionalTxt,
      this.redirectionModule,
      this.isDisabled,
      this.titleEng,
      this.redirectionType,
      this.redirectionValue,
      this.displayOrder,
      this.icon,
      this.title});

  SubCategory.fromJson(Map<String, dynamic> json) {
    disableMesg = json['DisableMesg'];
    promotionalTxt = json['PromotionalTxt'];
    redirectionModule = json['RedirectionModule'];
    isDisabled = json['IsDisabled'];
    titleEng = json['TitleEng'];
    redirectionType = json['RedirectionType'];
    redirectionValue = json['RedirectionValue'];
    displayOrder = json['DisplayOrder'];
    icon = json['Icon'];
    title = json['Title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DisableMesg'] = disableMesg;
    data['PromotionalTxt'] = promotionalTxt;
    data['RedirectionModule'] = redirectionModule;
    data['IsDisabled'] = isDisabled;
    data['TitleEng'] = titleEng;
    data['RedirectionType'] = redirectionType;
    data['RedirectionValue'] = redirectionValue;
    data['DisplayOrder'] = displayOrder;
    data['Icon'] = icon;
    data['Title'] = title;
    return data;
  }
}

// class CategoryContent {
//  String? promotionalTxt;
//   String? redirectionValue;
//   String? btnIcon;
//   Null? transactionId;
//   String? subTitle;
//   bool? isDisabled;
//   String? title;
//   String? btnLabel;
//   List<SubCategory>? subCategory;
//   String? redirectionModule;
//   int? displayOrder;
//   Null? data;
//   String? redirectionType;
//   String? icon;
//   String? titleEng;
//   String? disableMesg;

//   CategoryContent(
//       {this.promotionalTxt,
//       this.redirectionValue,
//       this.btnIcon,
//       this.transactionId,
//       this.subTitle,
//       this.isDisabled,
//       this.title,
//       this.btnLabel,
//       this.subCategory,
//       this.redirectionModule,
//       this.displayOrder,
//       this.data,
//       this.redirectionType,
//       this.icon,
//       this.titleEng,
//       this.disableMesg});

//   CategoryContent.fromJson(Map<String, dynamic> json) {
//     promotionalTxt = json['PromotionalTxt'];
//     redirectionValue = json['RedirectionValue'];
//     btnIcon = json['BtnIcon'];
//     transactionId = json['TransactionId'];
//     subTitle = json['SubTitle'];
//     isDisabled = json['IsDisabled'];
//     title = json['Title'];
//     btnLabel = json['BtnLabel'];
//     if (json['SubCategory'] != null) {
//       subCategory = <Null>[];
//       json['SubCategory'].forEach((v) {
//         subCategory!.add(new Null.fromJson(v));
//       });
//     }
//     redirectionModule = json['RedirectionModule'];
//     displayOrder = json['DisplayOrder'];
//     data = json['Data'];
//     redirectionType = json['RedirectionType'];
//     icon = json['Icon'];
//     titleEng = json['TitleEng'];
//     disableMesg = json['DisableMesg'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['PromotionalTxt'] = this.promotionalTxt;
//     data['RedirectionValue'] = this.redirectionValue;
//     data['BtnIcon'] = this.btnIcon;
//     data['TransactionId'] = this.transactionId;
//     data['SubTitle'] = this.subTitle;
//     data['IsDisabled'] = this.isDisabled;
//     data['Title'] = this.title;
//     data['BtnLabel'] = this.btnLabel;
//     if (this.subCategory != null) {
//       data['SubCategory'] = this.subCategory!.map((v) => v.toJson()).toList();
//     }
//     data['RedirectionModule'] = this.redirectionModule;
//     data['DisplayOrder'] = this.displayOrder;
//     data['Data'] = this.data;
//     data['RedirectionType'] = this.redirectionType;
//     data['Icon'] = this.icon;
//     data['TitleEng'] = this.titleEng;
//     data['DisableMesg'] = this.disableMesg;
//     return data;
//   }
// }
