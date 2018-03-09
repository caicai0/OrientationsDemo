//
//  AutorotateNavigationController.m
//  demo1
//
//  Created by 李玉峰 on 2018/3/8.
//  Copyright © 2018年 李玉峰. All rights reserved.
//

#import "AutorotateNavigationController.h"
#import "NavigationDelegate.h"

@interface AutorotateNavigationController ()

@property (nonatomic, strong)NavigationDelegate * Ndelegate;

@end

@implementation AutorotateNavigationController

- (BOOL)shouldAutorotate{
    return [self.topViewController shouldAutorotate];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}

@end
