//
//  RfViewController.m
//  Setting
//
//  Created by 林毅 on 2016/11/22.
//  Copyright © 2016年 hugoiis. All rights reserved.
//

#import "RfViewController.h"

@interface RfViewController ()

@property (nonatomic,strong) UIView * SatetViewAll;
@property (nonatomic,strong) UIView * ReadyV;
@property (nonatomic,strong) UIButton * ReadyButton;
@property (nonatomic,strong) UIButton * tfsmButton;
/**
 *
 */
@property (nonatomic,strong) UIView * BodyView;
/**
 *
 */
@property (nonatomic,strong) UIView * frequencyView;
/**
 *
 */
@property (nonatomic,strong) UIView * countView;

@end

@implementation RfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self satetViewAA];
    [self ReadyView];
}
#pragma mark  -countView
-(void)countV{

    self.countView = [[UIView alloc]initWithFrame:CGRectMake(self.SatetViewAll.bounds.size.width, 65+self.frequencyView.bounds.size.height, SCREENWIDTH-self.SatetViewAll.bounds.size.width, SCREENHEIGHT/8)];
    self.countView.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:self.countView];
}
#pragma mark  -frequencyView
-(void)frequencyV{
    self.frequencyView = [[UIView alloc]initWithFrame:CGRectMake(self.SatetViewAll.bounds.size.width+self.BodyView.bounds.size.width, 65, (SCREENWIDTH-self.SatetViewAll.bounds.size.width)/2, self.BodyView.bounds.size.height)];
    
    self.frequencyView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.frequencyView];
    [self countV];
}
#pragma mark  - BodyView
-(void)BodyV{
    self.BodyView = [[UIView alloc]initWithFrame:CGRectMake(self.SatetViewAll.bounds.size.width, 65, (SCREENWIDTH-self.SatetViewAll.bounds.size.width)/2, SCREENHEIGHT/3)];
    self.BodyView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.BodyView];
    [self frequencyV];
}


#pragma mark  - ReadyView
-(void)ReadyView{
    self.ReadyV = [[UIView alloc]initWithFrame:CGRectMake(0, self.SatetViewAll.bounds.size.height+64, self.SatetViewAll.bounds.size.width,  (SCREENHEIGHT-self.SatetViewAll.bounds.size.height-64))];
    self.ReadyV.backgroundColor = [UIColor redColor];
    
    self.ReadyButton = [[UIButton  alloc]initWithFrame:CGRectMake(0, 0, self.ReadyV.bounds.size.width, self.ReadyV.bounds.size.width)];
    self.ReadyButton.center = CGPointMake(self.ReadyV.bounds.size.width/2, self.ReadyV.bounds.size.height/4);
    self.ReadyButton.layer.cornerRadius = self.ReadyV.bounds.size.width/2;
    self.ReadyButton.layer.masksToBounds = YES;
    [self.ReadyButton setTitle:@"准备" forState:UIControlStateNormal];
    [self.ReadyButton setTitle:@"123" forState:UIControlStateSelected];
    [self.ReadyButton addTarget:self action:@selector(READYButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    self.ReadyButton.backgroundColor = [UIColor blueColor];
    
    self.tfsmButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.SatetViewAll.bounds.size.width, self.SatetViewAll.bounds.size.width)];
    self.tfsmButton.center = CGPointMake(self.ReadyV.bounds.size.width/2, (self.ReadyV.bounds.size.height/4)+(self.ReadyV.bounds.size.height/2));
    self.tfsmButton.layer.cornerRadius = self.ReadyV.bounds.size.width/2;
    self.tfsmButton.layer.masksToBounds = YES;
    [self.tfsmButton setTitle:@"待机" forState:UIControlStateNormal];
    self.tfsmButton.backgroundColor = [UIColor blueColor];
    
    [self.ReadyV addSubview:self.tfsmButton];
    [self.ReadyV addSubview:self.ReadyButton];
    [self.view addSubview:self.ReadyV];
    
    [self BodyV];
    
}
#pragma mark  - READYButtonClick
-(void)READYButtonClick:(UIButton * )button{
    self.ReadyButton.selected = !self.ReadyButton.selected;
}
#pragma mark  - 状态指示栏
-(void)satetViewAA{
    self.SatetViewAll =  [[UIView alloc]initWithFrame:CGRectMake(0, 65, SCREENWIDTH/8, SCREENHEIGHT/3)];
    self.SatetViewAll.backgroundColor = [UIColor whiteColor];
    //saterView
    UIImageView * imageViewWater = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, ((self.SatetViewAll.bounds.size.width/2)+(self.SatetViewAll.bounds.size.width/4)), self.SatetViewAll.bounds.size.height/6)];
    imageViewWater.center =CGPointMake(self.SatetViewAll.bounds.size.width/2,(self.SatetViewAll.bounds.size.height/5)/2);
    imageViewWater.image = [UIImage imageNamed:@"water.png"];
    //satetVier
    UIImageView * imageVierSatet = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, ((self.SatetViewAll.bounds.size.width/2)+(self.SatetViewAll.bounds.size.width/4)), self.SatetViewAll.bounds.size.height/6)];
    imageVierSatet.center =CGPointMake(self.SatetViewAll.bounds.size.width/2,((self.SatetViewAll.bounds.size.height/5)/2)+((self.SatetViewAll.bounds.size.height/5)));
    imageVierSatet.image = [UIImage imageNamed:@"state.png"];
    //
    UIImageView * imageViewPower =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, ((self.SatetViewAll.bounds.size.width/2)+(self.SatetViewAll.bounds.size.width/4)), self.SatetViewAll.bounds.size.height/6)];
    imageViewPower.center =CGPointMake(self.SatetViewAll.bounds.size.width/2,((self.SatetViewAll.bounds.size.height/5)/2)+((self.SatetViewAll.bounds.size.height/5)*2));
    imageViewPower.image = [UIImage imageNamed:@"power-no.png"];
    //
    UIImageView * imageViewLight =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, ((self.SatetViewAll.bounds.size.width/2)+(self.SatetViewAll.bounds.size.width/4)), self.SatetViewAll.bounds.size.height/6)];
    imageViewLight.center =CGPointMake(self.SatetViewAll.bounds.size.width/2,((self.SatetViewAll.bounds.size.height/5)/2)+((self.SatetViewAll.bounds.size.height/5)*3));
    imageViewLight.image = [UIImage imageNamed:@"light.png"];
    //
    UIImageView * imageViewT =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, ((self.SatetViewAll.bounds.size.width/2)), self.SatetViewAll.bounds.size.height/6)];
    imageViewT.center =CGPointMake((self.SatetViewAll.bounds.size.width/2)+(self.SatetViewAll.bounds.size.width/4),((self.SatetViewAll.bounds.size.height/5)/2)+((self.SatetViewAll.bounds.size.height/5)*4));
    imageViewT.image = [UIImage imageNamed:@"T.png"];
    //机器传送过来的温度
    UILabel * lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, ((self.SatetViewAll.bounds.size.width/2)), self.SatetViewAll.bounds.size.height/6)];
    lable.center =CGPointMake((self.SatetViewAll.bounds.size.width/2)-(self.SatetViewAll.bounds.size.width/4),((self.SatetViewAll.bounds.size.height/5)/2)+((self.SatetViewAll.bounds.size.height/5)*4));
    lable.text = @"31";
    lable.font = [UIFont systemFontOfSize:40];
    
//    [self.SatetViewAll addSubview:lable];
//    [self.SatetViewAll addSubview:imageViewT];
//    [self.SatetViewAll addSubview:imageViewPower];
//    [self.SatetViewAll addSubview:imageViewLight];
    [self.SatetViewAll addSubview:imageVierSatet];
//    [self.SatetViewAll addSubview:imageViewWater];
    [self.view addSubview:self.SatetViewAll];
    
    [self titleView];
    
}


#pragma mark -导航栏
//返回上层
-(void)titleView{
    //20backgroundColor
    UIImageView * imageView20 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 20)];
    imageView20.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:imageView20];
    //导航栏View
    UIView * titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 20, SCREENWIDTH, 44)];
    titleView.backgroundColor = [UIColor whiteColor];
    //返回按键
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(10, 7, 40, 30)];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage:[UIImage imageNamed:@"屏幕快照 2016-11-05 上午10.25.58.png"] forState:UIControlStateNormal];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 5;
    //分隔线
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 44, SCREENWIDTH, 1)];
    imageView.backgroundColor = [UIColor blackColor];
    UILabel * lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, titleView.bounds.size.width/8, 40)];
    lable.center  = CGPointMake(titleView.bounds.size.width/2, titleView.bounds.size.height/2);
    lable.textAlignment = NSTextAlignmentCenter;
    lable.font = [UIFont systemFontOfSize:25];
    lable.text = @"";
    
    [titleView addSubview:lable];
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
