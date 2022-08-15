//
// Created by Neal on 2022/8/15.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MFBulletModel;


@protocol MFBulletItemProtocol <NSObject>

- (CGSize)itemSizeWithModel:(__kindof MFBulletModel *)bulletModel;

- (void)configureItemWithModel:(__kindof MFBulletModel *)bulletModel;

@end

@protocol MFBulletViewProtocol <NSObject>

- (Class)itemClassWithModel:(__kindof MFBulletModel *)bulletModel;

@end





