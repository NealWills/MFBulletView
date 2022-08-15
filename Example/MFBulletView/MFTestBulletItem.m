//
//  MFTestBulletItem.m
//  MFBullteView_Example
//
//  Created by Neal on 2022/8/15.
//  Copyright © 2022 NealWills. All rights reserved.
//

#import "MFTestBulletItem.h"


@interface MFTestBulletItem ()

@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation MFTestBulletItem

- (void)configureSubviews {
    self.view = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:self.view];
    self.view.layer.borderColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.8 alpha:1].CGColor;
    self.view.layer.borderWidth = 1;
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.textColor = [UIColor colorWithRed:0.05 green:0.05 blue:0.05 alpha:1];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:self.titleLabel];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureSubviews];
    }
    return self;
}

- (void)configureItemWithModel:(__kindof MFBulletModel *)bulletModel {
    self.view.frame = self.bounds;
    self.titleLabel.frame = self.view.bounds;
    
    if ([bulletModel isKindOfClass:[MFTestBulletModel class]]) {
        MFTestBulletModel *testBulletModel = bulletModel;
        self.titleLabel.text = testBulletModel.title;
    }
    
}

- (CGSize)itemSizeWithModel:(__kindof MFBulletModel *)bulletModel {
    if ([bulletModel isKindOfClass:[MFTestBulletModel class]]) {
        MFTestBulletModel *testModel = bulletModel;
        CGSize titleSize = [testModel.title boundingRectWithSize:CGSizeMake(MAXFLOAT, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
        return CGSizeMake(titleSize.width + 20, 30);
    }
    return CGSizeZero;
}

@end
