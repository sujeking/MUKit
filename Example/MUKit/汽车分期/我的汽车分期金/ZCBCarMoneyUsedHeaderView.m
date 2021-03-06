//
//  ZCBCarMoneyUsedHeaderView.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/27.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarMoneyUsedHeaderView.h"
#import "ZCBCarMoneyUsedcell.h"


@interface ZCBCarMoneyUsedHeaderView()<UITableViewDataSource,UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *contactTextField;

@property (weak, nonatomic) IBOutlet UILabel *loanMoneyLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tableviewHeightConstraint;

@property (strong ,nonatomic) NSMutableArray *modelArray;
@end

static NSString * const cellReusedIdentifier = @"cell";
@implementation ZCBCarMoneyUsedHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
//    [self.button1 setCornerRadius:10.];
//    [self.button2 setCornerRadius:10.];
//    [self.button3 setCornerRadius:10.];
//    [self.button4 setCornerRadius:10.];
    
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableview.rowHeight = 44.;
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    [self.tableview registerNib:[UINib nibWithNibName:@"ZCBCarMoneyUsedcell" bundle:nil] forCellReuseIdentifier:cellReusedIdentifier];
}

//-(void)setModel:(BSSCModel *)model{
//    _model = model;
//    model.area_name = model.area_name?:@"";
//    _addressTextField.text = [NSString stringWithFormat:@"%@%@%@",model.province_name,model.city_name,model.area_name];
//    _detailAddressTextField.text = model.address;
//    _contactTextField.text = model.mobile;
//
//    BSSCModel *temoModel = model.project_step[0];
//    [_button1 setTitle:temoModel.operate forState:UIControlStateNormal];
//    [_button1 setBackgroundColor:[temoModel.sataus integerValue]==1?TTZCBIconRed:[UIColor grayColor]];
//    _button1.enabled = [temoModel.sataus integerValue]==1?YES:NO;
//    temoModel = model.project_step[1];
//     [_button2 setTitle:temoModel.operate forState:UIControlStateNormal];
//    [_button2 setBackgroundColor:[temoModel.sataus integerValue]==1?TTZCBIconRed:[UIColor grayColor]];
//    _button2.enabled = [temoModel.sataus integerValue]==1?YES:NO;
//    temoModel = model.project_step[2];
//    [_button3 setTitle:temoModel.operate forState:UIControlStateNormal];
//    [_button3 setBackgroundColor:[temoModel.sataus integerValue]==1?TTZCBIconRed:[UIColor grayColor]];
//    _button3.enabled = [temoModel.sataus integerValue]==1?YES:NO;
//    temoModel = model.project_step[3];
//    [_button4 setTitle:temoModel.operate forState:UIControlStateNormal];
//    [_button4 setBackgroundColor:[temoModel.sataus integerValue]==1?TTZCBIconRed:[UIColor grayColor]];
//    _button4.enabled = [temoModel.sataus integerValue]==1?YES:NO;
//
//    _loanMoneyLabel.text = [NSString stringWithFormat:@"总贷款:￥%@",model.totalmoney];
//    self.modelArray = model.lendlist;
//    CGFloat height = self.tableview.rowHeight * model.lendlist.count;
//    UITableView *tableV = (UITableView *)self.superview;
//    self.mj_h = self.mj_h + height - 128.;
//    [tableV reloadData];
//    self.tableviewHeightConstraint.constant = height;
//    self.modelArray = model.lendlist;
//    [self.tableview reloadData];
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.modelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZCBCarMoneyUsedcell *cell = [tableView dequeueReusableCellWithIdentifier:cellReusedIdentifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    cell.model = self.modelArray[indexPath.row];
    
    return cell;
}

@end
