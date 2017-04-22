//
//  LYJMyViewController.m
//  LYJSmoothNavDemo
//
//  Created by lyj on 17/4/21.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import "LYJMyViewController.h"
#import "UIViewController+Cloudox.h"
#import "UINavigationController+Cloudox.h"
#import "ViewController.h"

@interface LYJMyViewController ()<UINavigationControllerDelegate>

@property (nonatomic, strong) UIColor *barBGColor;

@end

@implementation LYJMyViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navBarBgAlpha = @"0.0";
    
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"second";
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.delegate = self;
    // Do any additional setup after loading the view.
}
- (IBAction)backViewController:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - UINavigationControllerDelegate
// 将要显示控制器
//- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    // 判断要显示的控制器是否是自己
//    BOOL isShowSelf = [viewController isKindOfClass:[self class]];
//    
//    [self.navigationController setNavigationBarHidden:isShowSelf animated:YES];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
