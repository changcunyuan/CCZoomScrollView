//
//  ZoomImageView.h
//  skyeye
//
//  Created by Liang on 15/5/6.
//  Copyright (c) 2015年 Baidu inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZoomImageView : UIScrollView <UIScrollViewDelegate>

@property(nonatomic, strong) UIImageView *imageView;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
- (void)setImageViewFrameWithImageWidth:(CGFloat)width imageHeight:(CGFloat)height;

@end
