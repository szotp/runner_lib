//
//  Launcher.m
//  RunnerLib
//
//  Created by pszot on 07/09/2019.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "Launcher.h"
#include "GeneratedPluginRegistrant.h"

@implementation Launcher

+ (void)launchFrom:(UIViewController *)parent {
    static FlutterViewController *vc;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        vc = [FlutterViewController new];
        [GeneratedPluginRegistrant registerWithRegistry:vc];
    });
    
    if (vc.presentingViewController != nil) {
        // already visible
        return;
    }
    
    // TODO: reset to root route

    [parent presentViewController:vc animated:YES completion:nil];
}

@end
