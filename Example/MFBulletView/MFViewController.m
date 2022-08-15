//
//  MFViewController.m
//  MFBulletView
//
//  Created by NealWills on 08/15/2022.
//  Copyright (c) 2022 NealWills. All rights reserved.
//


#import "MFViewController.h"

@import MFBulletView;

#import "MFTestBulletItem.h"
#import "MFTestBulletModel.h"

@interface MFViewController () <MFBulletViewProtocol>

@property (nonatomic, strong) MFBulletView *bulletView;

@end

@implementation MFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.bulletView = MFBulletView.initWithFrame(CGRectMake(0, 100, self.view.frame.size.width, 200))
    .setSuperView(self.view)
    .setRailCount(4)
    .setRailHeight(40)
    .setRailSpacing(20)
    .setRailOffsetList(@[@(0), @(10), @(20), @(30)])
    .setRailSpeedList(@[@(1), @(1), @(1)])
    .setViewDelegate(self)
    .setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345" speed:1 distanceToLast:12],
        [MFTestBulletModel modelWithTitle:@"223333444556" speed:1 distanceToLast:40],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf" speed:1 distanceToLast:15],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf" speed:1 distanceToLast:50],
    ]);
    
    self.bulletView.setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345" speed:1 distanceToLast:12],
        [MFTestBulletModel modelWithTitle:@"223333444556" speed:1 distanceToLast:40],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf" speed:1 distanceToLast:15],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf" speed:1 distanceToLast:50],
    ]);
    
    self.bulletView.setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345"],
        [MFTestBulletModel modelWithTitle:@"223333444556"],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf"],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf"],
    ]);
    
    self.bulletView.setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345"],
        [MFTestBulletModel modelWithTitle:@"223333444556"],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf"],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf"],
    ]);
    
    self.bulletView.setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345"],
        [MFTestBulletModel modelWithTitle:@"223333444556"],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf"],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf"],
    ]);
    
    
    
}


- (Class)itemClassWithModel:(__kindof MFBulletModel *)bulletModel {
    return [MFTestBulletItem class];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
