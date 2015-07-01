//
//  ViewController.m
//  ZoomDemo
//
//  Created by Liang on 15/7/1.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "ViewController.h"
#import "ZoomImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZoomImageView *zoom = [[ZoomImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:zoom];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
