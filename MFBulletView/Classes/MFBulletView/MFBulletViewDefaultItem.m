//
//  MFBulletViewItem.m
//  MFBullteView
//
//  Created by Neal on 2022/8/15.
//

#import "MFBulletViewDefaultItem.h"

@implementation MFBulletViewDefaultItem


- (CGSize)itemSizeWithModel:(__kindof MFBulletModel *)bulletModel {
    return CGSizeMake(0, 0);
}

- (void)configureItem {
    
}

- (__kindof MFBulletModel *)bulletModel {
    return self.bulletModel;
}

@end
