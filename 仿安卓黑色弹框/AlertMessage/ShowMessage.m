//
//  ShowMessage.m
//  创8
//
//  Created by Mac on 16/9/3.
//  Copyright © 2016年 LoveSpending. All rights reserved.
//

#import "ShowMessage.h"
#import "NSString.h"

@implementation ShowMessage

-(void)showAlertMsg:(NSString *)message Duration:(float)duration
{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UIView *showview =  [[UIView alloc]init];
    showview.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1];
    showview.frame = CGRectMake(1, 1, 1, 1);
    
    showview.alpha = 1.0f;
    showview.layer.cornerRadius = 5.0f;
    showview.layer.masksToBounds = YES;
    [window addSubview:showview];
    
    UILabel *label = [[UILabel alloc]init];
    
    CGSize LabelSize = [message sizeWithFont:[UIFont systemFontOfSize:17] constrainedToSize:CGSizeMake(SCREEN_WIDTH-50, 9000)];
    label.frame = CGRectMake(0, 5, LabelSize.width, LabelSize.height);
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:15];
    label.numberOfLines = 0;
    
    showview.layer.cornerRadius = LabelSize.height/2;
    
    [showview addSubview:label];
    showview.frame = CGRectMake((SCREEN_WIDTH - LabelSize.width)/2, SCREEN_HEIGHT/2 +50+LabelSize.height, LabelSize.width, LabelSize.height+10);
    [UIView animateWithDuration:duration animations:^{
        showview.alpha = 0;
    } completion:^(BOOL finished) {
        [showview removeFromSuperview];
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
