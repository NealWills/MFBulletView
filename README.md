# MFBulletView

[![CI Status](https://img.shields.io/travis/NealWills/MFBulletView.svg?style=flat)](https://travis-ci.org/NealWills/MFBulletView)
[![Version](https://img.shields.io/cocoapods/v/MFBulletView.svg?style=flat)](https://cocoapods.org/pods/MFBulletView)
[![License](https://img.shields.io/cocoapods/l/MFBulletView.svg?style=flat)](https://cocoapods.org/pods/MFBulletView)
[![Platform](https://img.shields.io/cocoapods/p/MFBulletView.svg?style=flat)](https://cocoapods.org/pods/MFBulletView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MFBulletView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MFBulletView'
```

## Demo Gif

![image](https://github.com/NealWills/MFBulletView/blob/main/Images/test.gif?raw=true)

## Usage

ViewController  

```
 

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

- (void)lastItemViewAppear:(__kindof MFBulletModel *)bulletModel {
    NSLog(@"lastItemViewAppear : %@", bulletModel);
    
    self.bulletView.setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345" speed:arc4random_uniform(20) / 17.0 distanceToLast:12],
        [MFTestBulletModel modelWithTitle:@"223333444556" speed:arc4random_uniform(20) / 17.0 distanceToLast:40],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf" speed:arc4random_uniform(20) / 17.0 distanceToLast:15],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf" speed:arc4random_uniform(20) / 17.0 distanceToLast:50],
    ]);
    
    self.bulletView.setAddElements(@[
        [MFTestBulletModel modelWithTitle:@"11223345" speed:arc4random_uniform(20) / 17.0 distanceToLast:12],
        [MFTestBulletModel modelWithTitle:@"223333444556" speed:arc4random_uniform(20) / 17.0 distanceToLast:40],
        [MFTestBulletModel modelWithTitle:@"dfdfsdfsdf" speed:arc4random_uniform(20) / 17.0 distanceToLast:15],
        [MFTestBulletModel modelWithTitle:@"sdfsdfdsfdsf" speed:arc4random_uniform(20) / 17.0 distanceToLast:50],
    ]);

}

@end


```

Model 

```

// .h


#import <Foundation/Foundation.h>

@import MFBulletView;

NS_ASSUME_NONNULL_BEGIN

@interface MFTestBulletModel : MFBulletModel

@property (nonatomic, copy) NSString *title;

+ (instancetype)modelWithTitle:(NSString *)title;

+ (instancetype)modelWithTitle:(NSString *)title
                         speed:(CGFloat)speed
                distanceToLast:(CGFloat)distanceToLast;

@end

NS_ASSUME_NONNULL_END


// .m

#import "MFTestBulletModel.h"

@implementation MFTestBulletModel


+ (instancetype)modelWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        self.title = title;
    }
    return self;
}

- (CGFloat)speed {
    return 1;
}

@end

```

Item 

```

// .h


#import <Foundation/Foundation.h>

@import MFBulletView;

#import "MFTestBulletModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFTestBulletItem : UIView <MFBulletItemProtocol>

@property (nonatomic, strong) MFTestBulletModel *bulletModel;

@end

NS_ASSUME_NONNULL_END

// .m


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


```

## Author

NealWills, NealWills93@gmail.com

## License

MFBulletView is available under the MIT license. See the LICENSE file for more info.
