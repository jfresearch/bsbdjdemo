//
//  XMGNavigationController.m
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/11.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import "XMGNavigationController.h"

@implementation XMGNavigationController
+(void)initialize
{
  // UINavigationBar *bar = [UINavigationBar appearance];
    //过期了
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class],nil];
  //  UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:self];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    //设置导航栏的字体颜色
//    self.navigationBar.barTintColor = [UIColor redColor];
//    self.navigationBar.tintColor = [UIColor redColor];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
   // [super pushViewController:viewController animated:animated];
    //设置标题
   // viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
   // viewController.view;
//    if (viewController.navigationItem.leftBarButtonItem  == nil) {
//        <#statements#>
//    }
    if (self.childViewControllers.count > 0) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        //一般用于imageView
       // button.contentMode = UIViewContentModeLeft;
        //内容水平的排布,让按钮内部的内容左对齐
        button.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
        //button包裹显示内容
       // [button sizeToFit];
        //button的内边距
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
       // button.backgroundColor = [UIColor blueColor];
        // viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        //隐藏tabar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];

    

    
}
-(void)back
{
    [self popViewControllerAnimated:YES];
}
@end
