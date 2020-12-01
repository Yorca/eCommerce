//
//  YCTabBarController.m
//  eCommerce
//
//  Created by admin on 2020/7/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCTabBarController.h"
//#import "YCMeViewController.h"
//#import "YCCartViewController.h"
//#import "YCSaleViewController.h"
//#import "YCCategoryViewController.h"

#import "YCNavController.h"

@interface YCTabBarController ()
@property (nonatomic,strong) NSArray *tabBarMessageArray; //用来存储从plist获取的数据

@end

@implementation YCTabBarController

- (NSArray *)tabBarMessageArray
{
    if (!_tabBarMessageArray) {
        _tabBarMessageArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"YCTabBarController" ofType:@"plist"]];
    }
    return _tabBarMessageArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *item=[UITabBarItem appearance];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:RGB(57.0, 167.0, 241.0)} forState:UIControlStateSelected];
//   YCSaleViewController * vc1 =[[YCSaleViewController alloc]init];
//   vc1.view.backgroundColor=[UIColor orangeColor];
//    vc1.tabBarItem.image=[UIImage imageNamed:@"菜单栏限时特卖按钮未选中状态"];
//    vc1.tabBarItem.selectedImage=[UIImage imageNamed:@"菜单栏限时特卖按钮选中状态"];
//    vc1.tabBarItem.title=@"限时购";
//    [vc1.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
//    [vc1.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor colorWithRed:57.0/255.0 green:167.0/255.0 blue:241.0/255.0 alpha:1]} forState:UIControlStateNormal];
    
//
//    [self addChildViewController:vc1];
    
//    YCCategoryViewController *vc2 =[[YCCategoryViewController alloc]init];
   // vc2.view.backgroundColor=[UIColor systemIndigoColor];
//    vc2.tabBarItem.image=[UIImage imageNamed:@"菜单栏分类按钮未选中状态"];
//    vc2.tabBarItem.selectedImage=[UIImage imageNamed:@"菜单栏分类按钮选中状态"];
//    vc2.tabBarItem.title=@"分类";
//    [vc2.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
//    [vc2.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor colorWithRed:57.0/255.0 green:167.0/255.0 blue:241.0/255.0 alpha:1]} forState:UIControlStateNormal];
//    [self addChildViewController:vc2];

 //  YCCartViewController *vc3 =[[YCCartViewController alloc]init];
//    vc3.view.backgroundColor=[UIColor systemPinkColor];
//    vc3.tabBarItem.image=[UIImage imageNamed:@"菜单栏购物车按钮未选中状态"];
//    vc3.tabBarItem.selectedImage=[UIImage imageNamed:@"菜单栏购物车按钮选中状态"];
//    vc3.tabBarItem.title=@"购物车";
//    [vc3.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
//    [vc3.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor colorWithRed:57.0/255.0 green:167.0/255.0 blue:241.0/255.0 alpha:1]} forState:UIControlStateNormal];
//    [self addChildViewController:vc3];
    
//    YCMeViewController *vc4 =[[YCMeViewController alloc]init];
   // vc4.view.backgroundColor=[UIColor cyanColor];
//    vc4.tabBarItem.image=[UIImage imageNamed:@"菜单栏我的按钮未选中状态"];
//    vc4.tabBarItem.selectedImage=[UIImage imageNamed:@"菜单栏我的按钮选中状态"];
//    vc4.tabBarItem.title=@"我的";
//    [vc4.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
//    [vc4.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f], NSForegroundColorAttributeName:[UIColor colorWithRed:57.0/255.0 green:167.0/255.0 blue:241.0/255.0 alpha:1]} forState:UIControlStateNormal];
//    [self addChildViewController:vc4];
    // Do any additional setup after loading the view.
    
//    NSArray *tabbarImage=@[@"菜单栏限时特卖按钮未选中状态",@"菜单栏分类按钮未选中状态",@"菜单栏购物车按钮未选中状态",@"菜单栏我的按钮未选中状态"];
//    NSArray *tabbarSelectedImage=@[@"菜单栏限时特卖按钮选中状态",@"菜单栏分类按钮选中状态",@"菜单栏购物车按钮选中状态",@"菜单栏我的按钮选中状态"];
//    NSArray *tabbarTitle=@[@"Limited!",@"Category",@"Shopping Cart",@"Mine"];
//
//    NSArray *tarBarChildControllers =@[vc1,vc2,vc3,vc4];
//    NSDictionary *tabBarDict=@{@"image":tabbarImage,@"seletedImage":tabbarSelectedImage,@"title":tabbarTitle,@"childControllers":tarBarChildControllers};
//    for(NSInteger i=0;i<4;i++){
//        UIViewController *vc=[tabBarDict[@"childControllers"] objectAtIndex:i];
//        vc.tabBarItem.image=[UIImage imageNamed:[tabBarDict[@"image"] objectAtIndex:i]];
//        vc.tabBarItem.selectedImage=[UIImage imageNamed:[tabBarDict[@"seletedImage"] objectAtIndex:i]];
//        vc.tabBarItem.title=[tabBarDict[@"title"] objectAtIndex:i];
//        [self addChildViewController:vc];
//    }
    for (NSDictionary *dic in self.tabBarMessageArray) {
        Class viewControllerClass= NSClassFromString(dic[@"viewController"]);
        UIViewController *vc=[[viewControllerClass alloc] init];
        vc.tabBarItem.image=[UIImage imageNamed:dic[@"image"]];
        vc.tabBarItem.selectedImage=[UIImage imageNamed:dic[@"selectedImage"]];
       // vc.tabBarItem.title=dic[@"title"];
        vc.title=dic[@"title"];
        YCNavController *nav=[[YCNavController alloc] initWithRootViewController:vc];
        [self addChildViewController:nav];
        
        
    }
    
    

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
