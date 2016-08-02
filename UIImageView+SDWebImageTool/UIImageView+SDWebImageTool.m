//
//  UIImageView+Tool.m
//  Photo
//
//  Created by Ellmcz on 16/8/2.
//  Copyright © 2016年 ellmcz. All rights reserved.
//

#import "UIImageView+SDWebImageTool.h"


@implementation UIImageView (SDWebImageTool)

/**
 *  设置普通图片加载
 */
-(void)sd_setImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage
{
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:placeHolderImage options:SDWebImageLowPriority | SDWebImageRetryFailed];
    
}
-(void)sd_setImageWithUrlString:(NSString *)urlString{
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:nil options:SDWebImageLowPriority | SDWebImageRetryFailed];
}
#pragma mark  ---------------设置渐现图片加载---------------------
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url{
    [self sd_setChangeAlphaImageWithUrl:url placeHolder:nil];
}
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage
{
    [self sd_setImageWithURL:url placeholderImage:placeHolderImage options:SDWebImageLowPriority | SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        self.alpha = 0.1;
        
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        if (cacheType == SDImageCacheTypeMemory) {
            self.alpha = 0.5;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
            
        }else{
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
    }];
}
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options{
    [self sd_setImageWithURL:url placeholderImage:placeHolderImage options:options progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        self.alpha = 0.1;
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (cacheType == SDImageCacheTypeMemory) {
            self.alpha = 0.5;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
            
        }else{
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
    }];
}
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString{
    [self sd_setChangeAlphaImageWithUrlString:urlString placeHolder:nil];
}
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage
{
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:placeHolderImage options:SDWebImageLowPriority | SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        self.alpha = 0.1;
        
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        if (cacheType == SDImageCacheTypeMemory) {
            
            self.alpha = 0.5;
            
            [UIView animateWithDuration:0.5  animations:^{
                
                self.alpha = 1.0;
                
            }];
            
        }else{
            self.alpha = 0.1;
            
            [UIView animateWithDuration:0.5  animations:^{
                
                self.alpha = 1.0;
                
            }];
        }
        
    }];
}
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlStrig placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options{
    [self sd_setImageWithURL:[NSURL URLWithString:urlStrig] placeholderImage:placeHolderImage options:options progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        self.alpha = 0.1;
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (cacheType == SDImageCacheTypeMemory) {
            self.alpha = 0.5;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
            
        }else{
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
    }];

}
#pragma mark  ---------------设置菊花动画的等待图片 ---------------------
/**
 *  设置菊花动画的等待图片
 */
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url{
    [self sd_setIndicatorImageWithUrl:url placeHolder:nil];
}
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage
{
    __block UIActivityIndicatorView * indicatorPlaceholder = nil;
    [self sd_setImageWithURL:url placeholderImage:placeHolderImage options:SDWebImageLowPriority | SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        //创建指示器:必须放在线程内才不会报错
        dispatch_async(dispatch_get_main_queue(), ^{
            if(!indicatorPlaceholder){
                [self addSubview:indicatorPlaceholder = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray]];
                indicatorPlaceholder.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
                indicatorPlaceholder.hidesWhenStopped = YES;
                [indicatorPlaceholder startAnimating];
            }
        });
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        //如果图片未缓存  渐现效果
        if (cacheType == SDImageCacheTypeNone){
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
        
        //消除指示器
        for (UIView * view in [self subviews]){
            if ([indicatorPlaceholder isKindOfClass:[UIActivityIndicatorView class]]) {
                [view removeFromSuperview];
            }
        }
    }];
}

-(void)sd_setIndicatorImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options{
    __block UIActivityIndicatorView * indicatorPlaceholder = nil;
    [self sd_setImageWithURL:url placeholderImage:placeHolderImage options:options progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        //创建指示器:必须放在线程内才不会报错
        dispatch_async(dispatch_get_main_queue(), ^{
            if(!indicatorPlaceholder){
                [self addSubview:indicatorPlaceholder = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray]];
                indicatorPlaceholder.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
                indicatorPlaceholder.hidesWhenStopped = YES;
                [indicatorPlaceholder startAnimating];
            }
        });
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        //如果图片未缓存  渐现效果
        if (cacheType == SDImageCacheTypeNone){
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
        
        //消除指示器
        for (UIView * view in [self subviews]){
            if ([indicatorPlaceholder isKindOfClass:[UIActivityIndicatorView class]]) {
                [view removeFromSuperview];
            }
        }
    }];
 
}
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString{
    [self sd_setIndicatorImageWithUrlString:urlString placeHolder:nil];
}
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage
{
    __block UIActivityIndicatorView * indicatorPlaceholder = nil;
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:placeHolderImage options:SDWebImageLowPriority | SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        //创建指示器:必须放在线程内才不会报错
        dispatch_async(dispatch_get_main_queue(), ^{
            if(!indicatorPlaceholder){
                [self addSubview:indicatorPlaceholder = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray]];
                indicatorPlaceholder.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
                indicatorPlaceholder.hidesWhenStopped = YES;
                [indicatorPlaceholder startAnimating];
            }
        });
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        //如果图片未缓存  渐现效果
        if (cacheType == SDImageCacheTypeNone){
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
        
        //消除指示器
        for (UIView * view in [self subviews]){
            if ([indicatorPlaceholder isKindOfClass:[UIActivityIndicatorView class]]) {
                [view removeFromSuperview];
            }
        }
    }];
}
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage
 options:(SDWebImageOptions)options{
    __block UIActivityIndicatorView * indicatorPlaceholder = nil;
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:placeHolderImage options:options progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        //创建指示器:必须放在线程内才不会报错
        dispatch_async(dispatch_get_main_queue(), ^{
            if(!indicatorPlaceholder){
                [self addSubview:indicatorPlaceholder = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray]];
                indicatorPlaceholder.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
                indicatorPlaceholder.hidesWhenStopped = YES;
                [indicatorPlaceholder startAnimating];
            }
        });
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        //如果图片未缓存  渐现效果
        if (cacheType == SDImageCacheTypeNone){
            self.alpha = 0.1;
            [UIView animateWithDuration:0.5  animations:^{
                self.alpha = 1.0;
            }];
        }
        
        //消除指示器
        for (UIView * view in [self subviews]){
            if ([indicatorPlaceholder isKindOfClass:[UIActivityIndicatorView class]]) {
                [view removeFromSuperview];
            }
        }
    }];

}

@end
