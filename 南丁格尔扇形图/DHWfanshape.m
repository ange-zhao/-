//
//  DHWfanshape.m
//  南丁格尔扇形图
//
//  Created by ange on 15-1-19.
//  Copyright (c) 2015年 dhwheavy. All rights reserved.
//

#import "DHWfanshape.h"
#define PI 3.14159265358979323846
static double angelCount = 0;
@implementation DHWfanshape
{
    NSMutableArray *_fanshapeArray;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    _fanshapeArray = [[NSMutableArray alloc]init];
    return self;
}
-(void)addFanshapeR:(NSNumber*)r Angel:(NSNumber*)angel Color:(UIColor *)color
{
    [_fanshapeArray addObject:@{@"r":r,@"angel":angel,@"color":color}];
    [self setNeedsDisplay];
}
-(void)drawRect:(CGRect)rect
{
    [_fanshapeArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSNumber *r = [obj objectForKey:@"r"];
        NSNumber *angel = [obj objectForKey:@"angel"];
        double tempR = [r doubleValue];
        double tempAngel = [angel doubleValue];
        //画扇形，也就画圆，只不过是设置角度的大小，形成一个扇形
        UIColor*aColor = [obj objectForKey:@"color"];;
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, aColor.CGColor);//填充颜色
        //以10为半径围绕圆心画指定角度扇形
        CGContextMoveToPoint(context, 160, self.frame.size.height/2);
        CGContextAddArc(context, 160, self.frame.size.height/2, tempR, -angelCount * PI / 180, -(angelCount + tempAngel) * PI / 180, 1);
        angelCount = angelCount+tempAngel;
        CGContextClosePath(context);
        CGContextDrawPath(context, kCGPathFillStroke); //绘制路径
    }];
    
    //绘制文字
    CGContextRef context = UIGraphicsGetCurrentContext();

    for(int i = 0; i< [_valueArr count]; i++)
    {
        float origionx = 80 ;
        float origiony = i * 30 + 450;//文字的位置
        
        [[_colorArr objectAtIndex:i %  [_valueArr count]] setFill];
        

        //小方格
        CGContextFillRect(context, CGRectMake(origionx, origiony, 20, 20));
        CGContextDrawPath(context, kCGPathFill);
        //文字
        if(i< [_titleArr count])
        {
            NSString *title = [ _titleArr objectAtIndex:i];
            [title drawAtPoint:CGPointMake(origionx + 50, origiony) withFont:[UIFont systemFontOfSize:16]];                  }
        
    }

}


@end
