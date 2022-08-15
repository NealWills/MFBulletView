//
//  MFBulletModel.h
//  MFBullteView
//
//  Created by Neal on 2022/8/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MFBulletModel : NSObject

/**
 * 移动速度 有speed优先取speed， 无speed取当前轨道速度
 */
@property (nonatomic, assign) CGFloat speed;

/**
 * 与最近的同轨道的间距， 无distance取当前轨道内元素间距
 */
@property (nonatomic, assign) CGFloat distanceToLast;

@end

NS_ASSUME_NONNULL_END
