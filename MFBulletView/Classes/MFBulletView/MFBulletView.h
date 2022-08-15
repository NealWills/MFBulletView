//
//  MFBulletView.h
//  MFBullteView
//
//  Created by Neal on 2022/8/15.
//

#import "MFBulletViewHeader.h"


@class MFBulletModel;

NS_ASSUME_NONNULL_BEGIN

@interface MFBulletView : UIView

/**
 * 初始化方法
 * @return 本体-链式语法调用
 */
+ (__kindof MFBulletView *(^)(CGRect))initWithFrame;

/**
 * 设置容器视图
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(__kindof UIView *))setSuperView;

/**
 * 设置轨道高度
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(CGFloat))setRailHeight;

/**
 * 设置轨道数量
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(int))setRailCount;

/**
 * 设置轨道间隔
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(CGFloat))setRailSpacing;

/**
 * 设置轨道内元素间隔
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView * _Nonnull (^)(NSArray <NSNumber *> *))setRailItemSpacing;

/**
 * 设置轨道起点偏移量
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(NSArray <NSNumber *>*))setRailOffsetList;

/**
 * 设置轨道滚动速度
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(NSArray <NSNumber *> *))setRailSpeedList;

/**
 * 填充多条弹幕
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(NSArray <__kindof MFBulletModel *> *))setAddElements;

/**
 * 填充单条弹幕
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(__kindof MFBulletModel *))setAddElement;

/**
 * 填充指定数量的弹幕
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(MFBulletModel *, int))setAddElementWithCount;

/**
 * 设置视图上无弹幕时是否remove 默认NO
 * @return 本体-链式语法调用
 */
- (__kindof MFBulletView *(^)(BOOL))setShouldRemoveWhenEmpty;

/**
 * 设置代理 - 必须
 */
- (__kindof MFBulletView *(^)(id<MFBulletViewProtocol>))setViewDelegate;

/**
 * 填充弹幕
 * @param elements 弹幕列表
 */
- (void)addElements:(NSArray <MFBulletModel *> *)elements;

/**
 * 填充弹幕
 * @param element 单个弹幕
 */
- (void)addElement:(MFBulletModel *)element;

/**
 * 填充弹幕
 * @param element 弹幕单元
 * @param count 弹幕数量
 */
- (void)addElement:(MFBulletModel *)element forCount:(int)count;

@end

NS_ASSUME_NONNULL_END
