//
//  MFTestBulletModel.m
//  MFBullteView_Example
//
//  Created by Neal on 2022/8/15.
//  Copyright © 2022 NealWills. All rights reserved.
//

#import "MFTestBulletModel.h"

@implementation MFTestBulletModel


+ (instancetype)modelWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        self.title = title;
    }
    return self;
}


+ (instancetype)modelWithTitle:(NSString *)title
                         speed:(CGFloat)speed
                distanceToLast:(CGFloat)distanceToLast {
    return [[self alloc] initWithTitle:title
                                 speed:speed
                        distanceToLast:distanceToLast
    ];
}

- (instancetype)initWithTitle:(NSString *)title
                         speed:(CGFloat)speed
               distanceToLast:(CGFloat)distanceToLast {
    self = [super init];
    if (self) {
        self.title = title;
        self.speed = speed;
        self.distanceToLast = distanceToLast;
    }
    return self;
}




@end
