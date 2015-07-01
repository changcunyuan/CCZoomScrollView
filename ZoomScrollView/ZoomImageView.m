//
//  ZoomImageView.m
//  skyeye
//
//  Created by Liang on 15/5/6.
//  Copyright (c) 2015年 Baidu inc. All rights reserved.
//

#import "ZoomImageView.h"

@implementation ZoomImageView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {        
        self.maximumZoomScale = 3.0;
        self.minimumZoomScale = 1.0;
        self.delegate = self;
        
        self.imageView = [[UIImageView alloc] init];
        [self addSubview:self.imageView];
    }
    return self;
}
- (void)setImageViewFrameWithImageWidth:(CGFloat)width imageHeight:(CGFloat)height {
    
    self.width = width;
    self.height = height;
    
    float imageViewWidth; //显示出来的图片View的宽度
    float imageViewHeight; //显示出来的图片View的高度
    
    if ((self.width / self.height) > (self.frame.size.width / self.frame.size.height)) {
        
        imageViewWidth = self.frame.size.width;
        imageViewHeight = self.height * imageViewWidth / self.width;
        
        if (self.width < self.frame.size.width) {
            imageViewWidth = self.width;
            imageViewHeight = self.height;
        }
        
    }else {
        
        imageViewHeight = self.frame.size.height;
        imageViewWidth = self.width * imageViewHeight / self.height;
        
        if (self.height < self.frame.size.height) {
            imageViewWidth = self.width;
            imageViewHeight = self.height;
        }
        
    }
    self.imageView.frame = CGRectMake((self.frame.size.width - imageViewWidth) / 2,
                                      (self.frame.size.height - imageViewHeight) / 2,
                                      imageViewWidth,
                                      imageViewHeight);
}

#pragma mark
#pragma mark scrollViewDelegate

- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    
    CGFloat offsetX = (scrollView.bounds.size.width > scrollView.contentSize.width)?
    (scrollView.bounds.size.width - scrollView.contentSize.width) * 0.5 : 0.0;
    CGFloat offsetY = (scrollView.bounds.size.height > scrollView.contentSize.height)?
    (scrollView.bounds.size.height - scrollView.contentSize.height) * 0.5 : 0.0;
    self.imageView.center = CGPointMake(scrollView.contentSize.width * 0.5 + offsetX,
                                                    scrollView.contentSize.height * 0.5 + offsetY);
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
