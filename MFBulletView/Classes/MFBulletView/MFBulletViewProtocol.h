//
// Created by Neal on 2022/8/15.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MFBulletModel;


@protocol MFBulletItemProtocol <NSObject>

/**
 
 */
- (CGSize)itemSizeWithModel:(__kindof MFBulletModel *)bulletModel;

- (void)configureItemWithModel:(__kindof MFBulletModel *)bulletModel;

@end

@protocol MFBulletViewProtocol <NSObject>

/**
 * 根据model返回Item类型
 * @param bulletModel model
 */
- (Class)itemClassWithModel:(__kindof MFBulletModel *)bulletModel;

/**
 * 最后一个item即将出现
 * @param bulletModel 最后一个元素的模型， 有可能为nil
 */
- (void)lastItemViewAppear:(__kindof MFBulletModel *)bulletModel;

@end





