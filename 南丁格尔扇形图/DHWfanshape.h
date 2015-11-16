//
//  DHWfanshape.h
//  南丁格尔扇形图
//
//  Created by ange on 15-1-19.
//  Copyright (c) 2015年 dhwheavy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface DHWfanshape : UIView
@property (nonatomic,strong)NSArray *titleArr;
@property (nonatomic,strong)NSArray *colorArr;
@property (nonatomic,strong)NSArray *valueArr;
-(void)addFanshapeR:(NSNumber*)r Angel:(NSNumber*)angel Color:(UIColor *)color;
@end
