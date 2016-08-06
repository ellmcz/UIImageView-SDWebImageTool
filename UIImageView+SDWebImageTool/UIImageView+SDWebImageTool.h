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
/**
 *  普通图片的加载图片（NSString）
 *
 *  @param urlString        网络地址
 *  @param placeHolderImage 占位图片
 */
-(void)sd_setImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage ;
/**
 *  普通图片的加载网络地址（NSString）
 *
 *  @param urlString 网络地址
 */
-(void)sd_setImageWithUrlString:(NSString *)urlString;

#pragma mark  --------------设置渐近加载图片----------------------
/**
 *  渐近加载图片(NSURL)
 *
 *  @param url 网络地址
 */
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url;
/**
 *  渐近加载图片(NSURL)
 *
 *  @param url               网络地址
 *  @param placeHolderImage  占位图
 */
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage;
/**
 *  渐近加载图片(NSURL)
 *
 *  @param url               网络地址
 *  @param placeHolderImage  占位图
 *  @param options           缓存策略
 */
-(void)sd_setChangeAlphaImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options;
/**
 *  渐近加载图片(NSString)
 *
 *  @param urlString 网络地址
 */
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString;
/**
 *  渐近加载图片(NSString)
 *
 *  @param urlString         网络地址
 *  @param placeHolderImage  占位图
 */
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage;
/**
 *  渐近加载图片(NSString)
 *
 *  @param urlString        网络地址
 *  @param placeHolderImage 占位图
 *  @param options          缓存策略
 */
-(void)sd_setChangeAlphaImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options;
#pragma mark  ---------------设置菊花动画的等待图片---------------------
/**
 *  菊花动画的等待图片加载(NSURL)
 *
 *  @param url 网络地址
 */
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url;
/**
 * 菊花动画的等待图片加载(NSURL)
 *
 *  @param url               网络地址
 *  @param placeHolderImage  占位图
 */
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage;
/**
 *  菊花动画的等待图片(NSURL)
 *
 *  @param url               网络地址
 *  @param placeHolderImage  占位图
 *  @param options           缓存策略
 */
-(void)sd_setIndicatorImageWithUrl:(NSURL *)url placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options ;
/**
 *  菊花动画的等待图片加载(NSString)
 *
 *  @param urlString 网络地址
 */
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString;
/**
 *  菊花动画的等待图片图片加载(NSString)
 *
 *  @param urlString         网络地址
 *  @param placeHolderImage  占位图
 */
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage ;
/**
 *  菊花动画的等待图片加载(NSString)
 *
 *  @param urlString         网络地址
 *  @param placeHolderImage  占位图
 *  @param options           缓存策略
 */
-(void)sd_setIndicatorImageWithUrlString:(NSString *)urlString placeHolder:(UIImage *)placeHolderImage options:(SDWebImageOptions)options;

@end
