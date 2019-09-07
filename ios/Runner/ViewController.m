//
//  ViewController.m
//  Runner
//
//  Created by pszot on 07/09/2019.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "ViewController.h"
#import <RunnerLib/RunnerLib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
#if DEBUG
    // we need this to connect with debugger when launching from VSCode
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [Launcher launchFrom:self];
    });
#endif
}

- (IBAction)showFlutter:(id)sender {
    [Launcher launchFrom:self];
}

@end
