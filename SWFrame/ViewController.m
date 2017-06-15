//
//  ViewController.m
//  SWFrame
//
//  Created by iSongWei on 2017/6/14.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Attribute.h"
#import "UIButton+block.h"
#import "UIButton+Extension.h"
#import "UIView+Extension.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton  * bb1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * ll = [[UILabel alloc]initWithFrame:(CGRectMake(0, 200, 300, 50))];
    ll.text = @"asdsadasgdfshdviosvnsjhaldmfalk";
    [ll sizeToFit];
    ll.textColor = [UIColor redColor];
    ll.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    
    ll.sw_text(@"sdassa").sw_text(@"sss");
    [ll sizeToFit];
    [ll labelTextArray:@[@"s",@"adas"] textColorArray:@[[UIColor blueColor],[UIColor greenColor]]];
    [self.view addSubview:ll];
    
    UIButton  * bb = [ UIButton buttonWithType:(UIButtonTypeCustom)];
    _bb1 = bb;
    bb.sw_title(@"haha",UIControlStateNormal).sw_frame(CGRectMake(55, 55, 55, 55)).sw_bgColor([UIColor redColor]).sw_titleColor([UIColor whiteColor],UIControlStateNormal);
    [self.view addSubview:bb];
    
    UIButton  * bb1 = [UIButton buttonWithFrame:(CGRectMake(0, 0, 100, 100)) ];
    
    [bb1 setTitle:@"ss" color:[UIColor grayColor] sColor:[UIColor redColor] hColor:[UIColor blueColor]];
    [bb1 setImage:nil sImage:nil hImage:nil];
    [bb1 setBGImage:nil sBGImage:nil hBGImage:nil];
    [self.view addSubview:bb1];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_bb1 pulseViewWithTime:0.9];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
