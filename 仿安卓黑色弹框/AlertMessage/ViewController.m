//
//  ViewController.m
//  AlertMessage
//
//  Created by Mac on 16/9/13.
//  Copyright © 2016年 LoveSpending. All rights reserved.
//

#import "ViewController.h"
#import "ShowMessage.h"
#import "NSString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc] initWithFrame:(CGRectMake(0, 0, 100, 35))];
    button.backgroundColor = [UIColor greenColor];
    button.center = CGPointMake(s_v_width/2, 150);
    [button setTitle:@"show" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)btAction:(UIButton *)sender{

    ShowMessage *showMessage = [[ShowMessage alloc] init];
    [showMessage showAlertMsg:@"弹框，Yes！" Duration:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
