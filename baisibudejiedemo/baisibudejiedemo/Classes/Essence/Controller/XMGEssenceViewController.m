//
//  XMGEssenceViewController.m
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/10.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import "XMGEssenceViewController.h"
@interface XMGEssenceViewController ()

@end

@implementation XMGEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航控制器
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
//    UIButton *target = [UIButton buttonWithType:UIButtonTypeCustom];
//    [target setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
//    target.size = target.currentBackgroundImage.size;
//    [target setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
//    [target addTarget:self action:@selector(targetClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem ItemWithImage:@"MainTagSubIcon" HiglitImage:@"MainTagSubIconClick" target:self action:@selector(targetClick)];
//    self.view.backgroundColor = [UIColor colorWithRed:223/255.0 green:223/255.0 blue:223/255.0 alpha:1];
    self.view.backgroundColor = XMGGlobalColor;
}
-(void)targetClick
{
    //XMGLog(@"%s",__func__);
    XMGLogFunc;
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
