//
//  AutorotateTabBarController.m
//  demo1
//
//  Created by 李玉峰 on 2018/3/8.
//  Copyright © 2018年 李玉峰. All rights reserved.
//

#import "AutorotateTabBarController.h"

@interface AutorotateTabBarController ()

@end

@implementation AutorotateTabBarController

- (BOOL)shouldAutorotate{
    return [self.selectedViewController shouldAutorotate];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
