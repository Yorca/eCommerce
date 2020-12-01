//
//  AppDelegate.m
//  eCommerce
//
//  Created by admin on 2020/7/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "YCTabBarController.h"
//#import "ViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate
/*
pod 'SDWebImage', '~> 5.3.1.1-binary'
pod 'AFNetworking', '~> 4.0.0.1-binary-debug'
pod 'Masonry', '~> 1.1.0.1-binary'

*/

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    YCTabBarController *tabController = [[YCTabBarController alloc]init];

    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


//#pragma mark - UISceneSession lifecycle
//
//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
