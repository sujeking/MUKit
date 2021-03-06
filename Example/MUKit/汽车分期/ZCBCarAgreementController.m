//
//  ZCBCarAgreementController.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/26.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarAgreementController.h"

@interface ZCBCarAgreementController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) UIWebView *webview;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@end

@implementation ZCBCarAgreementController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self TTTitle:@"贷款电子协议" textColor:[UIColor whiteColor] isShimmering:NO];
//    self.webview = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, hScreenHeight - 49. - CGRectGetHeight(self.navigationController.navigationBar.bounds) - 20.)];
    [self.contentView addSubview:self.webview];
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.contract_url]]];
    self.edgesForExtendedLayout = UIRectEdgeBottom;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)arrayToString:(NSArray *)array{
    NSString *str = @"";
    for (NSUInteger i = 0; i<array.count; i++) {
        
        if (i == array.count) {
            str = [NSString stringWithFormat:@"%@%@",str,array[i]];
        }else{
             str = [NSString stringWithFormat:@"%@%@,",str,array[i]];
        }
    }
    return str;
}
/*
-(void)uploadData{
    
    CommonProgressShowWait(@"正在上传...")
    weakify(self)
    [BSSCModel POST:@"m=Api&c=Consumer&a=decoration_apply" Params:^(BSSCParms *ParmsModel) {
        
        ParmsModel.mobile   = self.contactString;
        ParmsModel.province = self.addressID[0];
        ParmsModel.city     = self.addressID[1];
        ParmsModel.area     = self.addressID[2];
        ParmsModel.address  = self.detailString;
        ParmsModel.decoration_contract = [self arrayToString:self.decorationImageArray];
        ParmsModel.id_card  = [self arrayToString:self.indentifierImageArray];
        ParmsModel.reference  = [self arrayToString:self.houseImageArray];
        ParmsModel.credit  = [self arrayToString:self.creditImageArray];
        ParmsModel.bank_statement  = [self arrayToString:self.flowImageArray];
        ParmsModel.loan_contract  = [self arrayToString:self.paymentImageArray];
        ParmsModel.money = self.money;
        ParmsModel.umobile = self.phone;
        
    } success:^(BSSCModel *model, NSMutableArray<BSSCModel *> *modelArr) {
        normalize(self)
         CommonProgressSucess(@"申请成功")
        [self.navigationController WillPushViewController:@"ZCBCarDoneController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
            
        } callback:nil jumpError:nil];
        
    } failure:^(NSError *error) {
        
    }];
}

Click_signal(button){
   
    [self uploadData];
}
 */
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
