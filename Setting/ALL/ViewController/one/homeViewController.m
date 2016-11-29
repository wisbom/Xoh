//
//  homeViewController.m
//  Setting
//
//  Created by 林毅 on 2016/11/15.
//  Copyright © 2016年 hugoiis. All rights reserved.
//

#import "homeViewController.h"
#import "TwoHomeViewController.h"
@interface homeViewController ()
/**
 *
 */
@property (nonatomic,strong) UIButton * buttonE;



@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    

    [self button];
}

-(void)button{
    
    
    _buttonE = [[UIButton alloc]initWithFrame:CGRectMake(SCREENWIDTH/6,(SCREENHEIGHT/2-64)/2 , SCREENWIDTH/6,SCREENWIDTH/6)];
    [_buttonE setBackgroundColor:[UIColor blueColor]];
    [self.buttonE setTitle:@"SHR" forState:UIControlStateNormal];
    self.buttonE.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.buttonE.titleLabel.font = [UIFont systemFontOfSize:40];
    [_buttonE addTarget:self action:@selector(ButtonClick) forControlEvents:UIControlEventTouchUpInside];
    self.buttonE.layer.cornerRadius = SCREENWIDTH/12;
    self.buttonE.layer.shadowRadius = YES;
    [self.view addSubview:_buttonE];
}
-(void)ButtonClick{
    TwoHomeViewController * twoVC = [[TwoHomeViewController alloc]init];
    
    [self presentViewController:twoVC animated:YES completion:^{
        
    }];
}
@end
