//
//  ViewController.m
//  TestMasonryCrash
//
//  Created by yy on 16/5/27.
//  Copyright © 2016年 BP. All rights reserved.
//

#import "ViewController.h"
#import "MasonryView.h"

@interface ViewController ()
@property (nonatomic, weak)  MasonryView *masonryView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MasonryView *masonryView = [MasonryView masonryView];
    [self.view addSubview:masonryView];
    self.masonryView = masonryView;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGRect frame = self.view.frame;
    frame.size.height = frame.size.height * 0.5;
    self.masonryView.frame = frame;
}
@end
