//
//  XBTabBarController.m
//  简约微博
//
//  Created by 曹晓波 on 14/11/9.
//  Copyright (c) 2014年 曹晓波. All rights reserved.
//

#import "XBTabBarController.h"

@interface XBTabBarController ()

@end

@implementation XBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *homeVc = [[UIViewController alloc] init];
    [self addOneVc:homeVc title:@"首页" imageName:@"" selectedImageName:@""];
    
    UIViewController *messageVc = [[UIViewController alloc] init];
    [self addOneVc:messageVc title:@"消息" imageName:@"" selectedImageName:@""];
    
    UIViewController *discoverVc = [[UIViewController alloc] init];
    [self addOneVc:discoverVc title:@"发现" imageName:@"" selectedImageName:@""];
    
    UIViewController *meVc = [[UIViewController alloc] init];
    [self addOneVc:meVc title:@"我" imageName:@"" selectedImageName:@""];
}

-(void)addOneVc:(UIViewController *)Vc title:(NSString *)title imageName:(NSString *) imageName selectedImageName:(NSString *)selectedImageName{
    
    Vc.title = title;
    Vc.tabBarItem.image = [UIImage imageNamed:imageName];
    Vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    [self addChildViewController:Vc];
    
}
@end
