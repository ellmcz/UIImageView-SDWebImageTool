//
//  UIImageView+Tool.h
//  Photo
//
//  Created by Ellmcz on 16/8/2.
//  Copyright © 2016年 ellmcz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
@interface UIImageView (SDWebImageTool)

/**x
 *  设置普通图片加载
 */
-(void)sd_setImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage ;
-(void)sd_setImageWithUrlString:(NSString *)urlString;

#pragma mark  --------------设置渐现图片加载----------------------
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url;
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage;
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options;
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString;
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage;
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options;
#pragma mark  ---------------设置菊花动画的等待图片---------------------
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url;
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage;
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options ;
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString;
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage ;
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options;

@end
