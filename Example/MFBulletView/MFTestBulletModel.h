//
//  MFTestBulletModel.h
//  MFBullteView_Example
//
//  Created by Neal on 2022/8/15.
//  Copyright © 2022 NealWills. All rights reserved.
//

#import <Foundation/Foundation.h>

@import MFBulletView;

NS_ASSUME_NONNULL_BEGIN

@interface MFTestBulletModel : MFBulletModel

@property (nonatomic, copy) NSString *title;


+ (instancetype)modelWithTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
