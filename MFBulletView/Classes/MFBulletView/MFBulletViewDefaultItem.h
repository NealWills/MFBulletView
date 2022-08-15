//
//  MFBulletViewItem.h
//  MFBullteView
//
//  Created by Neal on 2022/8/15.
//

#import <Foundation/Foundation.h>

#import "MFBulletViewHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFBulletViewDefaultItem : UIView <MFBulletItemProtocol>

@property (nonatomic, strong) MFBulletModel *bulletModel;

@end

NS_ASSUME_NONNULL_END
