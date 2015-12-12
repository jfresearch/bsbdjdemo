//
//  XMGMeViewController.m
//  01-百思不得姐
//
//  Created by 靳鹏飞 on 15/12/10.
//  Copyright © 2015年 靳鹏飞. All rights reserved.
//

#import "XMGMeViewController.h"

@interface XMGMeViewController ()

@end

@implementation XMGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title =@"我的";
//    UIButton *seeting = [UIButton buttonWithType:UIButtonTypeCustom];
//    [seeting setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
//    seeting.size = seeting.currentBackgroundImage.size;
//    [seeting setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
//    [seeting addTarget:self action:@selector(SeetingClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *setting = [UIBarButtonItem ItemWithImage:@"mine-setting-icon" HiglitImage:@"mine-setting-icon-click" target:self action:@selector(MineClick)];
//    UIButton *mine = [UIButton buttonWithType:UIButtonTypeCustom];
//    [mine setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
//    mine.size = mine.currentBackgroundImage.size;
//    [mine setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
//    [mine addTarget:self action:@selector(MineClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *moon = [UIBarButtonItem ItemWithImage:@"mine-moon-icon" HiglitImage:@"mine-moon-icon-click" target:self action:@selector(MineClick)];
    self.navigationItem.rightBarButtonItems = @[setting,moon];
    self.view.backgroundColor = XMGGlobalColor;
}
-(void)SeetingClick
{
    XMGLogFunc;
}
-(void)MineClick
{
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
