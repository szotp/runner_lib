//
//  Launcher.m
//  RunnerLib
//
//  Created by pszot on 07/09/2019.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "Launcher.h"
#import <Flutter/Flutter.h>

@implementation Launcher

+ (void)launchFrom:(UIViewController *)parent {
    [parent presentViewController:[FlutterViewController new] animated:YES completion:nil];
}

@end
