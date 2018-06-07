//
//  WJSheetView.m
//  JDZS
//
//  Created by Mac on 2018/6/5.
//  Copyright © 2018年 Mac. All rights reserved.
//

#import "WJSheetView.h"
#import "WJSheetItemView.h"

@interface WJSheetView ()

@property (nonatomic, copy)void (^WJItemsBlock)(NSInteger index);

@property (nonatomic, strong)UIView             *backgroundView;
@property (nonatomic, strong)WJSheetItemView    *itemsView;
@end

@implementation WJSheetView

+ (instancetype)wjSheetViewTitle:(NSString *)title message:(NSString *)message items:(NSArray *)items sheetStyle:(WJSheetStyle)sheetStyle itemAction:(void (^)(NSInteger))action
{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    WJSheetView *sheetView = [[WJSheetView alloc] initWithFrame:window.bounds];
    sheetView.WJItemsBlock = action;
    
    sheetView.itemsView.title       = title;
    sheetView.itemsView.message     = message;
    sheetView.itemsView.items       = items;
    sheetView.itemsView.sheetStyle  = sheetStyle;
    [window addSubview:sheetView];
    
    return sheetView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // 重置动画视图的Frame
        
        
        // 做动画
    }
    
    return self;
}

- (void)show
{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    [window addSubview:self];
}

- (void)setTitle:(NSString *)title
{
    _title = title;
    self.itemsView.title = title;
}

- (void)setMessage:(NSString *)message
{
    _message = message;
    self.itemsView.message = message;
}

#pragma mark  -----  动画

//  展示动画
- (void)showAnimation
{
    
}

//  隐藏动画
- (void)hiddenAnimation
{
    
}

#pragma mark  -----  getter

- (UIView *)backgroundView
{
    if (!_backgroundView) {
        
        _backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hiddenAnimation)];
        [_backgroundView addGestureRecognizer:tap];
    }
    
    return _backgroundView;
}

- (WJSheetItemView *)itemsView
{
    if (!_itemsView) {
        
        _itemsView = [[WJSheetItemView alloc] init];
    }
    
    return _itemsView;
}

@end
