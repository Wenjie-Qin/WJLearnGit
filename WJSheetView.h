//
//  WJSheetView.h
//  JDZS
//
//  Created by Mac on 2018/6/5.
//  Copyright © 2018年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WJSheetViewConfig.h"

@interface WJSheetView : UIView
@property (nonatomic, copy)NSString     *title;     // 标题
@property (nonatomic, copy)NSString     *message;   // 描述信息

+ (instancetype)wjSheetViewTitle:(NSString *)title
                         message:(NSString *)message
                           items:(NSArray *)items
                      sheetStyle:(WJSheetStyle)sheetStyle
                      itemAction:(void (^)(NSInteger index))action;

- (void)show;

@end
