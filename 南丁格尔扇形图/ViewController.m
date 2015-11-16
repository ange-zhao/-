//
//  ViewController.m
//  南丁格尔扇形图
//
//  Created by ange on 15-1-19.
//  Copyright (c) 2015年 dhwheavy. All rights reserved.
//

#import "ViewController.h"
#import "DHWfanshape.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DHWfanshape *fanshape = [[DHWfanshape alloc]initWithFrame:self.view.bounds];
    fanshape.titleArr = [NSArray arrayWithObjects:@"可报销",@"已报销",@"未报销", nil];
    fanshape.valueArr = [NSArray arrayWithObjects:[NSNumber numberWithFloat:20],[NSNumber numberWithFloat:50],\
                     [NSNumber numberWithFloat:70], nil];
    fanshape.colorArr = [NSArray arrayWithObjects:[UIColor grayColor], [UIColor blueColor], [UIColor redColor],  nil];

    fanshape.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:fanshape];
    [fanshape addFanshapeR:[NSNumber numberWithInt:100] Angel:[NSNumber numberWithInt:0] Color:[UIColor redColor]];
    [fanshape addFanshapeR:[NSNumber numberWithInt:100] Angel:[NSNumber numberWithInt:120] Color:[UIColor blueColor]];
    [fanshape addFanshapeR:[NSNumber numberWithInt:100] Angel:[NSNumber numberWithInt:240] Color:[UIColor grayColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
