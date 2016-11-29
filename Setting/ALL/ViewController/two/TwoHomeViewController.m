//
//  TwoHomeViewController.m
//  Setting
//
//  Created by 林毅 on 2016/11/15.
//  Copyright © 2016年 hugoiis. All rights reserved.
//

#import "TwoHomeViewController.h"
#import "SettingViewController.h"
#import "OperationViewController.h"
#import "LaserViewController.h"
#import "RfViewController.h"

@interface TwoHomeViewController ()

/**
 进入显示界面
 */
@property (nonatomic,strong) UIImageView  * imageViewTwo;
/**
 *进入按键
 */
@property (nonatomic,strong) UIButton * StartButton;
/**
 *Welcome
 */
@property (nonatomic,strong) UILabel * WelcomeLabel;
/**
 *选择按键
 */
@property (nonatomic,strong) UICollectionView * collectionView;
/**
 *
 */
@property (nonatomic,strong) UIButton * SHR_E_Button;
/**
 *
 */
@property (nonatomic,strong) UIButton * LASER_Button;
/**
 *
 */
@property (nonatomic,strong) UIButton * RF_Button;
/**
 *
 */
@property (nonatomic,strong) UIButton * Setting_Button;

@end

@implementation TwoHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self StartButtonBB];
}
#pragma mark  -setWelcomeButton
-(void)StartButtonBB{
    //bacgronundColor
    self.view.backgroundColor = [UIColor whiteColor];
  //开始imageView
    [self startView];
    //自定义导航栏
    [self titleView];
    //SHR_E_button
    [self WelcomeButton:self.SHR_E_Button ButtonName:@"SHR-E" ButtonAction:@selector(SHRbutton) BackgroundImage:nil CenterCG:CGPointMake(SCREENWIDTH/4, ((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height)+(SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/4) Label:30];
   //LASER_Button
    [self WelcomeButton:self.LASER_Button ButtonName:@"LASER" ButtonAction:@selector(LASERbutton) BackgroundImage:nil CenterCG:CGPointMake((SCREENWIDTH/2)+(SCREENWIDTH/4),((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height)+(SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/4)Label:30];
    //RF_Button
    [self WelcomeButton:self.RF_Button ButtonName:@"RF" ButtonAction:@selector(RFbutton) BackgroundImage:nil CenterCG:CGPointMake(SCREENWIDTH/4, (((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height)+(SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/4 )+((SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/2)) Label:30];
   //Setting_Button
    [self WelcomeButton:self.Setting_Button ButtonName:@"Setting" ButtonAction:@selector(Settingbutton) BackgroundImage:nil CenterCG:CGPointMake((SCREENWIDTH/2)+(SCREENWIDTH/4), (((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height)+(SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/4 )+((SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/2)) Label:30];
    
    }
#pragma mark  -SHRButtonClick
-(void)SHRbutton{
    ListSelectView *select_view = [[ListSelectView alloc] initWithFrame:self.view.bounds];
    select_view.choose_type = MORECHOOSETITLETYPE;
    select_view.isShowCancelBtn = YES;
    select_view.isShowSureBtn = YES;
    select_view.isShowTitle = YES;
    NSArray * ArrTwo = @[@"脱毛",@"嫩肤",@"祛斑",@"祛红血丝",@"治疗痤疮",@"OPTSHR"];
    
    [select_view addTitleArray:ArrTwo andTitleString:@"Select the operating system" animated:YES completionHandler:^(NSString * _Nullable string, NSInteger index) {
        OperationViewController * operationVC =[[OperationViewController alloc]init];
        operationVC.LabelName = string;
        [self presentViewController:operationVC animated:YES completion:^{
            }];
        NSLog(@"%@------%ld",string,(long)index);
    } withSureButtonBlock:^{
        NSLog(@"sure btn");
    }];
    [self.view addSubview:select_view];
    NSLog(@"1");
    
}
#pragma mark  -LASERButtonClick
-(void)LASERbutton{
    LaserViewController * LaserVC = [[LaserViewController alloc]init];
    [self presentViewController:LaserVC animated:YES completion:^{
        
    }];
    
 NSLog(@"2");
}
#pragma mark  -RFbuttoClick
-(void)RFbutton{
    RfViewController * RFVC = [[RfViewController alloc]init];
    [self presentViewController:RFVC animated:YES completion:^{
        
    }];
    
 NSLog(@"3");
}
#pragma mark  -SettingbuttonClick
-(void)Settingbutton{
 NSLog(@"4");
}
#pragma mark  SET-SHR-E_LASER_RF_SETTING-Button
-(void)WelcomeButton:(UIButton *)button ButtonName:(NSString * )name ButtonAction:(SEL)Click BackgroundImage:(NSString * )BackgroundImage CenterCG:(CGPoint )CenterCG Label:(CGFloat)LabelFont{
    button  = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH/2-3, (SCREENHEIGHT-((SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height+self.WelcomeLabel.bounds.size.height))/2-3)];
    button.center = CenterCG;
    button.layer.cornerRadius = 15;
    button.layer.masksToBounds = YES;
    button.titleLabel.font = [UIFont systemFontOfSize:LabelFont];
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:name forState:UIControlStateNormal];
    [button addTarget:self action:Click forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage:[UIImage imageNamed:BackgroundImage] forState:UIControlStateNormal];
    [self.view addSubview:button];
    }
#pragma mark -开机界面
-(void)startView{
    //显示开机图片
    self.imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home.png"]];
    self.imageViewTwo.frame = CGRectMake(0, SCREENHEIGHT/6, SCREENWIDTH, SCREENHEIGHT/2.5);
    [self.view addSubview:self.imageViewTwo];
    self.WelcomeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, (SCREENHEIGHT/6)+self.imageViewTwo.bounds.size.height, SCREENWIDTH, SCREENHEIGHT/7)];
    self.WelcomeLabel.text = @"Welcome";
    self.WelcomeLabel.backgroundColor = [UIColor whiteColor];
    self.WelcomeLabel.textAlignment = NSTextAlignmentCenter;
    self.WelcomeLabel.font =  [UIFont systemFontOfSize:60];
    [self.view addSubview:self.WelcomeLabel];
}
#pragma mark -导航栏
//返回上层
-(void)titleView{
    UIView * titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 20, SCREENWIDTH, 44)];
    titleView.backgroundColor = [UIColor whiteColor];
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(10, 7, 40, 30)];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage:[UIImage imageNamed:@"屏幕快照 2016-11-05 上午10.25.58.png"] forState:UIControlStateNormal];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 5;
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 44, SCREENWIDTH, 1)];
    imageView.backgroundColor = [UIColor blackColor];
    [titleView addSubview:imageView];
    [titleView addSubview:button];
    [self.view addSubview:titleView];

}
//返回上一层
-(void)buttonClick{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}


@end
