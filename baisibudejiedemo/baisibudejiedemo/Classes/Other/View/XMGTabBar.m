//
//  XMGTabBar.m
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/10.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import "XMGTabBar.h"
@interface XMGTabBar()
/**
 发布按钮
 */
@property (nonatomic, strong)UIButton *publishbutton;
@end
@implementation XMGTabBar
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:    UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [self addSubview:publishButton];
        self.publishbutton = publishButton;
        self.publishbutton.size = self.publishbutton.currentBackgroundImage.size;
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    //self.publishbutton.frame = CGRectMake(0,0, self.publishbutton.currentBackgroundImage.size.width, self.publishbutton.currentBackgroundImage.size.height);
    CGFloat width = self.width;
    CGFloat Height = self.height;
//    self.publishbutton.height = self.publishbutton.currentBackgroundImage.size.height;
//    self.publishbutton.width = self.publishbutton.currentBackgroundImage.size.height;
//    self.publishbutton.height = Height;
//    self.publishbutton.width = width  /5;
    self.publishbutton.center = CGPointMake(width * 0.5, Height * 0.5);
    CGFloat Y = 0;
    CGFloat Width = width / 5;
    CGFloat height = Height;
    int index = 0;
    for (UIView *button in self.subviews) {
//        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        if (![button isKindOfClass:[UIControl class]] || button == self.publishbutton) continue;
        CGFloat  X = Width * ((index > 1) ? (index + 1) : index);
        button.frame = CGRectMake(X, Y, Width, height);
        index ++;
            
        
    }
    
}
@end
