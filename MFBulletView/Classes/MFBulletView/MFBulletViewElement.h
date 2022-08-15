//
//  MFBulletViewElement.h
//  MFBulletView
//
//  Created by Neal on 2022/8/15.
//

#import <Foundation/Foundation.h>
#import "MFBulletViewHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFBulletViewElement : NSObject

@property (nonatomic, weak) UIView<MFBulletItemProtocol> *item;
@property (nonatomic, strong) MFBulletModel *model;

@end

NS_ASSUME_NONNULL_END
