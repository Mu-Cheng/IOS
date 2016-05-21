//
//  Calculate.m
//  计算器
//
//  Created by MuChen on 16/5/21.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

- (NSString*) calculate:(NSString*)input{
    double a = 0.0,b = 0.0;
    int i;
    char k = '\0';
    for (i = 0; i<[input length]; i++) {
        k = [input characterAtIndex:i];
        if (k>='0'&&k<='9') {
            a = a*10.0+k-'0';
        }else
            break;
    }
    char op = k;
    
    for (i++; i<[input length]; i++) {
        k = [input characterAtIndex:i];
        b = b*10.0+k-'0';
    }
    double ans = 0.0;
    NSNumber *Ans;
    
    switch (op) {
        case '+':
            ans = a+b;
            break;
        
        case '-':
            ans = a-b;
            break;
        
        case '*':
            ans = a*b;
            break;
        
        case '/':
            if(!b)return @"错误输入";
            ans = a/b;
            break;
    }
    
    Ans = [NSNumber numberWithDouble:ans];
//    NSLog(@"%lf",ans);
    NSString *output;
    output = [NSString stringWithFormat:@"%@",Ans];
    
    return output;
}

@end
