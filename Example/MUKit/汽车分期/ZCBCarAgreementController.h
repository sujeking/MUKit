//
//  ZCBCarAgreementController.h
//  MUKit_Example
//
//  Created by Jekity on 2017/12/26.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZCBCarAgreementController : UIViewController
/** 选择的 地址id 数组*/
@property (strong, nonatomic) NSArray * addressID;
/** 装修合同图片路径 */
@property (strong, nonatomic) NSMutableArray *decorationImageArray;

/** 购房合同图片路径 */
@property (strong, nonatomic) NSMutableArray *houseImageArray;

/** 详细地址*/
@property (copy, nonatomic) NSString * detailString;

/** 联系号码*/
@property (copy, nonatomic) NSString * contactString;

/** 身份证图片路径*/
@property (strong, nonatomic) NSMutableArray *indentifierImageArray;
/** 支付图片路径*/
@property (strong, nonatomic) NSMutableArray *paymentImageArray;
/** 贷款协议*/
@property (strong, nonatomic) NSString *contract_url;
/** 个人征信图片路径*/
@property (strong, nonatomic) NSMutableArray *creditImageArray;

/** 三个人流水征信图片路径*/
@property (strong, nonatomic) NSMutableArray *flowImageArray;

@property (strong, nonatomic) NSString *phone;


/** 贷款协议*/
@property (strong, nonatomic) NSString *money;
@end
