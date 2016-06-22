//
//  PositionTextField.m
//  textFieldOverride
//
//  Created by bingbing.luo on 16/6/14.
//  Copyright © 2016年 bingbing.luo. All rights reserved.
//

#import "PositionTextField.h"

@implementation PositionTextField


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    self.layer.cornerRadius=8.f;
    self.backgroundColor=[[UIColor greenColor
                           ]colorWithAlphaComponent:0.2];
    self.layer.masksToBounds=YES;
}

-(CGRect)placeholderRectForBounds:(CGRect)bounds
{
    CGRect inset = CGRectMake(bounds.origin.x+10, bounds.origin.y, bounds.size.width -10, bounds.size.height);
    return inset;
}
////控制显示文本的位置
//-(CGRect)textRectForBounds:(CGRect)bounds
//{
//    //return CGRectInset(bounds, 50, 0);
//    CGRect inset = CGRectMake(bounds.origin.x+190, bounds.origin.y, bounds.size.width -10, bounds.size.height);//更好理解些
//    
//    return inset;
//    
//}
//控制编辑文本的位置
-(CGRect)editingRectForBounds:(CGRect)bounds
{
  CGRect inset = CGRectMake(bounds.origin.x +10, bounds.origin.y, bounds.size.width -10, bounds.size.height);
    return inset;
}
//控制placeHolder的颜色、字体
- (void)drawPlaceholderInRect:(CGRect)rect
{
    NSMutableDictionary *attributes=[NSMutableDictionary dictionary];
    attributes[NSForegroundColorAttributeName]=[[UIColor whiteColor]colorWithAlphaComponent:0.5];
    attributes[NSFontAttributeName]=[UIFont systemFontOfSize:16];
    [[self placeholder]drawInRect:rect withAttributes:attributes];
   
}
@end
