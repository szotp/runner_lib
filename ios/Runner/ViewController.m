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
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self openFlutter:nil];
    });
}

- (IBAction)openFlutter:(id)sender {
    [Launcher launchFrom:self];
}

@end
