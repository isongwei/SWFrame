//
//  UILabel+Attribute.h
//  SWFrame
//
//  Created by iSongWei on 2017/6/14.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Attribute)



/**
 label 的相应文字颜色

 @param texts text数组
 @param colors color数组
 */
-(void)labelTextArray:(NSArray<NSString *> *)texts textColorArray:(NSArray<UIColor *> *)colors;




-(UILabel *(^)(NSString * ))sw_text;


@end
