//
//  OperationViewController.m
//  Setting
//
//  Created by 林毅 on 2016/11/16.
//  Copyright © 2016年 hugoiis. All rights reserved.
//

#import "OperationViewController.h"

@interface OperationViewController ()
/**
 状态指示栏
 */
@property (nonatomic,strong) UIView * SatetViewAll;
/**
 治疗界面
 */
@property (nonatomic,strong) UIView  * TView;
/**
 准备
 */
@property (nonatomic,strong) UIView * ReadyV;
/**
 *
 */
@property (nonatomic,strong) UIView * RFView;
/**
 IPL
 */
@property (nonatomic,strong) UIView * IPLView;
/**
 准备button
 */
@property (nonatomic,strong) UIButton * ReadyButton;
/**
 *
 */
@property (nonatomic,strong) UIButton * tfsmButton;
@end

@implementation OperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        self.view.backgroundColor = [UIColor grayColor];
    [self titleView];
    [self satetViewAA];
    [self ReadyView];
    [self RFV];
    [self IPLV];
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

}
#pragma mark  - READYButtonClick
-(void)READYButtonClick:(UIButton * )button{
    self.ReadyButton.selected = !self.ReadyButton.selected;
}
#pragma mark  - RF
-(void)RFV{
    self.RFView = [[UIView alloc] initWithFrame:CGRectMake(self.SatetViewAll.bounds.size.width, self.TView.bounds.size.height+64, (SCREENWIDTH-self.SatetViewAll.bounds.size.width)/2, SCREENHEIGHT-self.TView.bounds.size.height-64)];
    self.RFView.backgroundColor =[UIColor greenColor];
    
    UIButton * button  = [[UIButton alloc]initWithFrame:CGRectMake(0, self.RFView.bounds.size.height/4+self.RFView.bounds.size.height/2, self.RFView.bounds.size.width/2, self.RFView.bounds.size.height/5)];
    button.backgroundColor = [UIColor blueColor];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0,self.RFView.bounds.size.height/6, (self.RFView.bounds.size.width/2)+(self.RFView.bounds.size.width/4), self.RFView.bounds.size.width/2)];
    label.backgroundColor = [UIColor whiteColor];
    
    UIButton * UPbutton = [[UIButton alloc]initWithFrame:CGRectMake(label.bounds.size.width, self.RFView.bounds.size.height/4, self.RFView.bounds.size.width-label.bounds.size.width, self.RFView.bounds.size.height/5)];
    UPbutton.backgroundColor = [UIColor greenColor];
    
    UIButton * DownButton =[[UIButton alloc]initWithFrame:CGRectMake(label.bounds.size.width, self.RFView.bounds.size.height/4 + (self.RFView.bounds.size.height/2), self.RFView.bounds.size.width-label.bounds.size.width, self.RFView.bounds.size.height/5)];
    DownButton.backgroundColor = [UIColor redColor];
    
    [self.RFView addSubview:UPbutton];
    [self.RFView addSubview:DownButton];
    [self.RFView addSubview:label];
    [self.RFView addSubview:button];
    
    [self.view addSubview:self.RFView];
}
#pragma mark  - IPL
-(void)IPLV{
    self.IPLView  = [[UIView alloc]initWithFrame:CGRectMake(self.SatetViewAll.bounds.size.width+self.RFView.bounds.size.width, self.TView.bounds.size.height+64, (SCREENWIDTH-self.SatetViewAll.bounds.size.width)/2, SCREENHEIGHT-self.TView.bounds.size.height-64)];
    self.IPLView.backgroundColor = [UIColor brownColor];
    
    UIButton * button  = [[UIButton alloc]initWithFrame:CGRectMake(0, self.IPLView.bounds.size.height/4+self.IPLView.bounds.size.height/2, self.IPLView.bounds.size.width/2, self.IPLView.bounds.size.height/5)];
    button.backgroundColor = [UIColor blueColor];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, self.IPLView.bounds.size.height/6, (self.IPLView.bounds.size.width/2)+(self.IPLView.bounds.size.width/4), self.IPLView.bounds.size.width/2)];
    label.backgroundColor = [UIColor whiteColor];
    
    UIButton * UPbutton = [[UIButton alloc]initWithFrame:CGRectMake(label.bounds.size.width, self.IPLView.bounds.size.height/4, self.IPLView.bounds.size.width-label.bounds.size.width, self.IPLView.bounds.size.height/5)];
    UPbutton.backgroundColor = [UIColor greenColor];
    
    UIButton * DownButton =[[UIButton alloc]initWithFrame:CGRectMake(label.bounds.size.width, self.IPLView.bounds.size.height/4 + (self.IPLView.bounds.size.height/2), self.IPLView.bounds.size.width-label.bounds.size.width, self.IPLView.bounds.size.height/5)];
    DownButton.backgroundColor = [UIColor redColor];
    
    [self.IPLView addSubview:UPbutton];
    [self.IPLView addSubview:DownButton];
    [self.IPLView addSubview:label];
    [self.IPLView addSubview:button];
    [self.view addSubview:self.IPLView];
    
    
}

#pragma mark  - 治疗界面
-(void)treatView{
    self.TView = [[UIView alloc]initWithFrame:CGRectMake(self.SatetViewAll.bounds.size.width, 65, SCREENWIDTH-self.SatetViewAll.bounds.size.width, self.SatetViewAll.bounds.size.height*1.8)];
    self.TView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.TView];

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
    
    [self.SatetViewAll addSubview:lable];
    [self.SatetViewAll addSubview:imageViewT];
    [self.SatetViewAll addSubview:imageViewPower];
    [self.SatetViewAll addSubview:imageViewLight];
    [self.SatetViewAll addSubview:imageVierSatet];
    [self.SatetViewAll addSubview:imageViewWater];
    NSLog(@"%ld",(long)self.SatetViewAll.bounds.size.width);
    [self.view addSubview:self.SatetViewAll];
    
    [self treatView];
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
    lable.text = self.LabelName;
    
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
