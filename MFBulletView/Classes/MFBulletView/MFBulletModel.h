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

@end

NS_ASSUME_NONNULL_END
