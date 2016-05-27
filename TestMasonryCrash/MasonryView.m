//
//  MasonryView.m
//  TestMasonryCrash
//
//  Created by yy on 16/5/27.
//  Copyright © 2016年 BP. All rights reserved.
//

#import "MasonryView.h"
#import "Masonry.h"

@interface MasonryView ()

@property (nonatomic, weak) UIView *blueView;
@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *greenView;

@end

@implementation MasonryView

+ (instancetype)masonryView {
    return [[self alloc] init];
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initViews];
        [self makeConstraints];
    }
    return self;
}

- (void)initViews {
    self.backgroundColor = UIColor.yellowColor;
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = UIColor.blueColor;
    [self addSubview:blueView];
    self.blueView = blueView;
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = UIColor.redColor;
    [self addSubview:redView];
    self.redView = redView;
    
    UIView *greenView = [[UIView alloc] init];
    greenView.backgroundColor = UIColor.greenColor;
    [self addSubview:greenView];
    self.greenView = greenView;
}

- (void)makeConstraints {
    UIView *superView = self;
    [self.blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView).offset(5);
        make.right.equalTo(superView).offset(-5);
        make.top.equalTo(superView).offset(5);
        make.height.equalTo(self.redView);
    }];
    
    [self.redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView).offset(5);
        make.top.equalTo(self.blueView.mas_bottom).offset(5);
        make.width.equalTo(self.greenView);
        make.bottom.equalTo(superView).offset(-5);
    }];
    
    [self.greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.redView.mas_right).offset(5);
        make.right.equalTo(superView).offset(-5);
        make.top.bottom.width.equalTo(self.redView);
    }];
}
@end
