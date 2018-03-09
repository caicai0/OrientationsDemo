//
//  OrentationMark.m
//  demo1
//
//  Created by 李玉峰 on 2018/3/9.
//  Copyright © 2018年 李玉峰. All rights reserved.
//

#import "OrentationMark.h"

@implementation OrentationMark

static OrentationMark * mark;

+ (instancetype)share{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mark = [[OrentationMark alloc]init];
    });
    return mark;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.orientationMask = UIInterfaceOrientationPortrait;
    }
    return self;
}

- (void)setOrientationMask:(UIInterfaceOrientationMask)orientationMask{
    if (_orientationMask != orientationMask) {
        _orientationMask = orientationMask;
        UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
        if (_orientationMask & (1<<orientation)) {
            
        }else{
            NSArray * orientations = @[@(UIInterfaceOrientationPortrait),@(UIInterfaceOrientationLandscapeLeft),@(UIInterfaceOrientationLandscapeRight),@(UIInterfaceOrientationPortraitUpsideDown)];
            for (NSNumber * value in orientations) {
                UIInterfaceOrientation orientation = [value integerValue];
                if (_orientationMask & (1<<orientation)) {
                    [[UIDevice currentDevice]setValue:@(UIInterfaceOrientationPortrait) forKey:@"orientation"];
                    break;
                }
            }
        }
    }
}

@end
