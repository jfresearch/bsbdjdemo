//
//  UIBarButtonItem+XMGExtension.m
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/11.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import "UIBarButtonItem+XMGExtension.h"

@implementation UIBarButtonItem (XMGExtension)
+(instancetype)ItemWithImage:(NSString *)image HiglitImage:(NSString *)higlitimage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    button.size = button.currentBackgroundImage.size;
    [button setBackgroundImage:[UIImage imageNamed:higlitimage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
