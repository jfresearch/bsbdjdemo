//
//  XMGTabController.m
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/10.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import "XMGTabController.h"
#import "XMGEssenceViewController.h"
#import "XMGNewViewController.h"
#import "XMGFriendTrendsViewController.h"
#import "XMGMeViewController.h"
#import "XMGTabBar.h"
#import "XMGNavigationController.h"
@interface XMGTabController ()

@end

@implementation XMGTabController
+(void)initialize
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dict[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = dict[NSFontAttributeName];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:dict forState:UIControlStateNormal];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
}
- (void)viewDidLoad {
    [super viewDidLoad];
   // [UINavigationBar appearance];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dict[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = dict[NSFontAttributeName];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:dict forState:UIControlStateNormal];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    // Do any additional setup after loading the view.
   //1.添加第一个子控制器 精华
    [self setChildVC:[[XMGEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
//    UIViewController *VC1 = [[UIViewController alloc] init];
//    VC1.view.backgroundColor = [UIColor greenColor];
//    UIImage *image = [UIImage imageNamed:@"tabBar_essence_click_icon"];
//    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    dict[NSForegroundColorAttributeName] = [UIColor grayColor];
  //  VC1.tabBarItem.title = @"精华";
   // [VC1.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
//    [VC1.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateSelected];
  //  VC1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
   // VC1.tabBarItem.selectedImage = image;
//    VC1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
//    [self addChildViewController:VC1];
//    //2.添加第二个子控制器 新帖
    [self setChildVC:[[XMGNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
//    UIViewController *VC2 = [[UIViewController alloc] init];
//    VC2.view.backgroundColor = [UIColor blueColor];
//    VC2.tabBarItem.title = @"新帖";
//    VC2.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
//    VC2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
//    [self addChildViewController:VC2];
    //添加第三个子控制器 关注
    [self setChildVC:[[XMGFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
//    UIViewController *VC3 = [[UIViewController alloc] init];
//    VC3.view.backgroundColor = [UIColor redColor];
//    VC3.tabBarItem.title = @"关注";
//    VC3.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
//    VC3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
//    [self addChildViewController:VC3];
    //添加第四个子控制器 我
    [self setChildVC:[[XMGMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
//    UIViewController *VC4 = [[UIViewController alloc] init];
//    VC4.view.backgroundColor = [UIColor orangeColor];
//    VC4.tabBarItem.title = @"我";
//    VC4.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
//    VC4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
//    [self addChildViewController:VC4];
//    UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
//    [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
//    [self.tabBar addSubview:publishButton];
//    publishButton.bounds = CGRectMake(0, 0, publishButton.currentBackgroundImage.size.width, publishButton.currentBackgroundImage.size.height);
//    publishButton.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
    [self setValue:[[XMGTabBar alloc] init] forKeyPath:@"tabBar"];
   // [self.tabBar addSubview:publishButton];
   // NSLog(@"%@",self.tabBar.subviews);
}
//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    for (UIView *button in self.tabBar.subviews) {
//        button.frame = CGRectMake(0, 0, 70, 48);
//    }
//    NSLog(@"%@",self.tabBar.subviews);
//}
//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    for (UIView *button in self.tabBar.subviews) {
//        button.frame = CGRectMake(0, 0, 70, 48);
//    }
//    NSLog(@"%@",self.tabBar.subviews);
//}
//-(void)viewDidLayoutSubviews
//{
//    [super viewDidLayoutSubviews];
//    for (UIView *button in self.tabBar.subviews) {
//        button.frame = CGRectMake(0, 0, 70, 48);
//    }
//    NSLog(@"%@",self.tabBar.subviews);
//}
/**
 初始化自控制器
 */
-(void)setChildVC:(UIViewController *)VC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    VC.tabBarItem.title = title;
    VC.tabBarItem.image = [UIImage imageNamed:image];
    VC.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
//    VC.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0  blue: arc4random_uniform(100)/100.0 alpha:1.0];
    XMGNavigationController *nav = [[XMGNavigationController alloc] initWithRootViewController:VC];
//    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    [self addChildViewController:nav];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
