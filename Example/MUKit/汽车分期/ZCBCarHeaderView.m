//
//  ZCBCarHeaderView.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/26.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarHeaderView.h"
#import "ZCBCarNumberView.h"

@interface ZCBCarHeaderView()



@property (weak, nonatomic) IBOutlet UILabel *tipsLabel;

@property (weak, nonatomic) IBOutlet UIImageView *topImageView;


@property (weak, nonatomic) IBOutlet UIButton *numberButton;

@end

@implementation ZCBCarHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
    [self updateConstraints];
    [self updateConstraintsIfNeeded];
    
//    [self getData];
}
/*
-(void)getData{
    [BSSCModel POSTResultWithPath:@"m=Api&c=Consumer&a=index" Params:^(BSSCParms *ParmsModel) {
        
    } success:^(BSSCModel *model, NSMutableArray<BSSCModel *> *modelArr, id responseObject) {
        
        weakify(self)
        ZCBCarNumberView *addressView = [ZCBCarNumberView sharedInstance];
        addressView.resultBlock = ^(NSString *string) {
            normalize(self)
            self.moneyLabel.text = string;
        };
//        [addressView showPickerView];
        _model = model;
        NSArray *array = responseObject[@"result"][@"quota"];
        addressView.modelArray = array;
        [self.topImageView sd_setImageWithURL:[NSURL URLWithString:model.topimg]];
        self.tipsLabel.text = model.notes;
        
        if (array.count>0) {
              self.moneyLabel.text = [NSString stringWithFormat:@"%@",array[0]];
        }
        
        self.TTheight += [self heightFor:model.notes width:hScreenWidth - 36.];
        UITableView *tableView =(UITableView *)self.superview;
        [tableView reloadData];
       
    } failure:^(NSError *error) {
        
    }];
    
}
-(CGFloat)heightFor:(NSString *)text width:(CGFloat)width{
    const float kFontSize = 18.f;
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    
    CGRect rect = [text boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:options attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:kFontSize]} context:nil];
    
    CGFloat realHeight = ceilf(rect.size.height);
    return realHeight;
}
*/
@end
