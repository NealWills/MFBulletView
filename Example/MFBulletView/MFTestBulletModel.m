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

- (CGFloat)speed {
    return 1;
}

@end
