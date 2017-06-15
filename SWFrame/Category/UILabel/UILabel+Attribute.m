//
//  UILabel+Attribute.m
//  SWFrame
//
//  Created by iSongWei on 2017/6/14.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "UILabel+Attribute.h"

@implementation UILabel (Attribute)

-(void)labelTextArray:(NSArray<NSString *> *)texts textColorArray:(NSArray<UIColor *> *)colors{
    if (!texts.count) {
        return;
    }
    if (texts.count > colors.count) {
        return;
    }
    NSMutableAttributedString *aString = [[NSMutableAttributedString alloc]initWithString:self.text];
    for (int i = 0; i < texts.count; i ++) {
        [aString addAttribute:NSForegroundColorAttributeName value:colors[i] range:[self.text rangeOfString:texts[i]]];
    }
    self.attributedText = aString;
}


-(UILabel *(^)(NSString * ))sw_text{
    return ^(NSString * t){
        self.text = t;
        [self sizeToFit];
        return self;
    };
}

@end
