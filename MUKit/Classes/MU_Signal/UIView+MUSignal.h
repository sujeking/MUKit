//
//  UIView+MUSignal.h
//  elmsc
//
//  Created by Jekity on 2017/8/17.
//  Copyright © 2017年 Jekity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MUSignal)


@property(nonatomic,readonly)UIViewController* viewController;
/**信号名，如果不设置则会自动赋值为控件的属性名*/
@property (nonatomic,copy)NSString *clickSignalName;

/**如果控件是‘UIControl’的子类，则可以通过这个改变信号的触发事件，UIButton默认为UIControlTouchUpInside，UITxtField默认为UIControlEventEditingChanged，其余默认为UIControlEventValueChanged*/
@property(nonatomic,assign) UIControlEvents allControlEvents;

/**如果控件是‘UITableViewCell’或者‘UIColectionViewCell’，则可以在信号事件中获取它所在‘NSIndexPath’'*/
@property (nonatomic,readonly)NSIndexPath *indexPath;

/**通过链式编程方式设置信号名*/
@property (nonatomic,assign)UIView *(^setSignalName)(NSString * signalName);

/**指定信号的响应对象，默认顺序为控件属性所在UIView或者UIcontroller-》UITableViewCell或者UIColectionViewCell-》UIcontroller*/
@property (nonatomic,assign)UIView *(^enforceTarget)(NSObject *target);

/**通过链式编程方式设置控件信号的触发事件*/
@property (nonatomic,assign)UIView *(^controlEvents)(UIControlEvents event);

@property (nonatomic,assign,readonly)NSUInteger sections;//returns nil or a integer,when you want to use it,you should associated  UITableViewHeaderFooterView "tag" protery assignment a intgeter value

@end

@interface NSObject (MUSignal)

/**信号名、信号响应对象以及参数*/
-(void)sendSignal:(NSString *)signalName target:(NSObject *)target object:(id)object;

/**信号名、信号响应对象*/
-(void)sendSignal:(NSString *)signalName target:(NSObject *)target;

@end
