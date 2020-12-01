//
//  YCNavController.m
//  eCommerce
//
//  Created by admin on 2020/7/14.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCNavController.h"

@interface YCNavController ()

@end

@implementation YCNavController

//保证只对navBar只进行一次设置，节省性能开销
+(void)initialize
{
    //获取NavigationBar
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage : [UIImage imageNamed:@"nav_backImage"] forBarMetrics:(UIBarMetricsDefault)]; //backgroud
    [navBar setTitleTextAttributes : @{
        NSForegroundColorAttributeName : [UIColor grayColor],
        NSFontAttributeName : [UIFont boldSystemFontOfSize:20.f]
    }]; //font format
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
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
