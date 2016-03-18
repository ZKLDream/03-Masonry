//
//  ViewController.m
//  03-Masonry
//
//  Created by 千锋 on 16/3/18.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test2];
    
    
}


-(void)test2{
    UIView *greenView=[[UIView alloc]init];
    greenView.backgroundColor=[UIColor greenColor];
    [self.view addSubview:greenView];
    
    UIView *redview=[[UIView alloc]init];
    redview.backgroundColor=[UIColor redColor];
    [self.view addSubview:redview];
    
    UIView *blueview=[[UIView alloc]init];
    blueview.backgroundColor=[UIColor blueColor];
    [self.view addSubview:blueview];
    CGFloat margin=20;
    
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //如果equalto后面的属性和设置的make的属性一样的时候可以讲后面的属性省略 如果不一样不能省略
        make.top.equalTo(self.view).with.offset(margin);
        
        make.left.equalTo(self.view.mas_left).with.offset(margin);
        make.bottom.equalTo(blueview.mas_top).with.offset(-margin);
        make.right.equalTo(redview.mas_left).with.offset(-margin);
        make.width.equalTo(redview.mas_width);
        make.height.equalTo(redview.mas_height);
        make.height.equalTo(blueview.mas_height);
        
        
        
    }];
    
    
    [redview mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.equalTo(self.view.mas_top).with.offset(margin);
     //   make.left.equalTo(greenView.mas_right).with.offset(margin);
        make.bottom.equalTo(blueview.mas_top).with.offset(-margin);
         make.right.equalTo(self.view.mas_right).with.offset(-margin);
        
      //  make.width.equalTo(greenView.mas_width);
        make.height.equalTo(blueview.mas_height);
    }];
    
    [blueview mas_makeConstraints:^(MASConstraintMaker *make) {
        
     //   make.top.equalTo(greenView.mas_bottom).with.offset(margin);
        make.left.equalTo(self.view.mas_left).with.offset(margin);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-margin);
        make.right.equalTo(self.view.mas_right).with.offset(-margin);
    
  //      make.height.equalTo(greenView.mas_height);
    }];
    
    
}


-(void)test1{
    UIView *redview=[[UIView alloc]init];
    [self.view addSubview:redview];
    redview.backgroundColor=[UIColor redColor];
    
    //新增约束
    [redview mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //在这儿make看成你要约束的对象
        //设置redview的顶部为self.view的顶部偏移30 左边距偏移20
        make.top.equalTo(self.view.mas_top).with.offset(30);
        make.left.equalTo(self.view.mas_left).with.offset(20);
        
        //直接设置宽度和高度
        make.width.with.offset(100);
        make.height.with.offset(200);
        
        
        
    }];
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
