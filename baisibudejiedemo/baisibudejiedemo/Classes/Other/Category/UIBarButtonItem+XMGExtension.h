//
//  UIBarButtonItem+XMGExtension.h
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/11.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XMGExtension)
+(instancetype)ItemWithImage:(NSString *)image HiglitImage:(NSString *)higlitimage target:(id)target action:(SEL)action;
@end
