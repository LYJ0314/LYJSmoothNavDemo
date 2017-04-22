//
//  ViewController.m
//  LYJSmoothNavDemo
//
//  Created by lyj on 17/4/21.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationController+Cloudox.h"
#import "UIViewController+Cloudox.h"
#import "LYJMyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navBarBgAlpha = @"1.0";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.view.backgroundColor = [UIColor colorWithRed:0x32/255.0f green:0xAB/255.0f blue:0x64/255.0f alpha:1.0f];

    self.navigationController.cloudox = @"lyj";
    [self getSub:self.navigationController.navigationBar andLevel:1];

    // Do any additional setup after loading the view, typically from a nib.
}
// 获取子视图
- (void)getSub:(UIView *)view andLevel:(int)level {
    NSArray *subviews = [view subviews];
    if ([subviews count] == 0) return;
    for (UIView *subview in subviews) {
        
        NSString *blank = @"";
        for (int i = 1; i < level; i++) {
            blank = [NSString stringWithFormat:@"  %@", blank];
        }
        NSLog(@"%@%d: %@", blank, level, subview.class);
        [self getSub:subview andLevel:(level+1)];
        
    }
}
- (IBAction)nextAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LYJMyViewController *nextVC = [storyboard instantiateViewControllerWithIdentifier:@"LYJMyViewController"];
    
//    LYJMyViewController *nextVC = [[LYJMyViewController alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
