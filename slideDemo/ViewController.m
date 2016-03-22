//
//  ViewController.m
//  slideDemo
//
//  Created by 涂婉丽 on 15/12/10.
//  Copyright (c) 2015年 涂婉丽. All rights reserved.
//

#import "ViewController.h"
#import "SUNSlideSwitchView.h"
#import "ModuleOneVC.h"
#import "ModuleTwoVC.h"
#import "ModuleThreeVC.h"
#define k_width [[UIScreen mainScreen]applicationFrame].size.width
#define k_height [[UIScreen mainScreen]applicationFrame].size.height
@interface ViewController ()<SUNSlideSwitchViewDelegate>
//显示的内容view
{
    SUNSlideSwitchView *_slideSwitchView;
}
@property (nonatomic,strong)ModuleOneVC *oneVC;
@property (nonatomic,strong)ModuleTwoVC *twoVC;
@property (nonatomic,strong)ModuleThreeVC *threeVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化UI
    self.title = @"所有模块";
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [self initUI];
}
- (void)initUI
{
    //滑动效果的添加

    _slideSwitchView = [[SUNSlideSwitchView alloc] initWithFrame:CGRectMake(0, 264,k_width , k_height)];
    [self.view addSubview:_slideSwitchView];
    _slideSwitchView.slideSwitchViewDelegate = self;
    
    _slideSwitchView.tabItemNormalColor = [UIColor colorWithRed:0.39 green:0.39 blue:0.39 alpha:1];
    _slideSwitchView.tabItemSelectedColor = [UIColor redColor];
    _slideSwitchView.shadowImage = [[UIImage imageNamed:@"navigation_bar_on"]
                                    stretchableImageWithLeftCapWidth:50.f topCapHeight:5.0f];
    self.oneVC = [[ModuleOneVC alloc]init];
    self.oneVC.title = @"模块one";
    self.twoVC = [[ModuleTwoVC alloc]init];
    self.twoVC.title = @"模块two";
    self.threeVC = [[ModuleThreeVC alloc]init];
    self.threeVC.title = @"模块three";

    [_slideSwitchView buildUI];
    
}


/*
 * 每个tab所属的viewController
 */
- (UIViewController *)slideSwitchView:(SUNSlideSwitchView *)view viewOfTab:(NSUInteger)number {
    if (number == 0) {
        return self.oneVC;
    } else if (number == 1) {
        return self.twoVC;
    } else if (number == 2) {
        return self.threeVC;
    } else {
        return nil;
    }
}
- (NSUInteger)numberOfTab:(SUNSlideSwitchView *)view {
    return 3;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
