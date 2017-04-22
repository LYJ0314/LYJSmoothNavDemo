//
//  UINavigationController+Cloudox.h
//  SmoothNavDemo
//
//  Created by lyj on 17/4/21.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Cloudox) <UINavigationBarDelegate, UINavigationControllerDelegate>
@property (copy, nonatomic) NSString *cloudox;
- (void)setNeedsNavigationBackground:(CGFloat)alpha;
@end
