//
//  Calculate.m
//  计算器
//
//  Created by MuChen on 16/5/21.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

+ (int) getString:(NSString*)input{
    int i;
    int cnt = 0;
    for (i = 0; i<[input length]; i++) {
        char k = [input characterAtIndex:i];
        if(('0'<=k&&k<='9')||k=='.'){
            cnt++;
        }else{
            if(0==cnt){
                cnt++;
                break;
            }else
                break;
        }
    }
    return cnt;
}

- (NSString*) calculate:(NSString*)input{
    NSMutableArray *ans = [[NSMutableArray alloc]init];
    NSMutableArray *st = [[NSMutableArray alloc]init];
    while (![input isEqual:@""]) {
        int k = [Calculate getString:input];
        NSString *s1 = [input substringToIndex:k];
        if ([s1 isEqual:@"+"]) {
            if ([st count]==0) {
                [st addObject:@"+"];
            }else{
                while([st count]!=0){
                    NSString * op = [st objectAtIndex:[st count]-1];
                    if ([op isEqual:@"("]) {
                        break;
                    }
                    [ans addObject:op];
                    [st removeObjectAtIndex:[st count]-1];
                }
                [st addObject:s1];
            }
        }else if([s1 isEqual:@"-"]) {
            if ([st count]==0) {
                [st addObject:@"-"];
            }else{
                while([st count]!=0){
                    NSString * op = [st objectAtIndex:[st count]-1];
                    if ([op isEqual:@"("]) {
                        break;
                    }
                    [ans addObject:op];
                    [st removeObjectAtIndex:[st count]-1];
                }
                [st addObject:s1];
            }
        }else if([s1 isEqual:@"*"]) {
            if ([st count]==0) {
                [st addObject:@"*"];
            }else{
                while([st count]!=0){
                    NSString * op = [st objectAtIndex:[st count]-1];
                    if ([op isEqual:@"+"]||[op isEqual:@"-"]) {
                        break;
                    }
                    if ([op isEqual:@"("]) {
                        break;
                    }
                    [ans addObject:op];
                    [st removeObjectAtIndex:[st count]-1];
                }
                [st addObject:s1];
            }
        }else if([s1 isEqual:@"/"]) {
            if ([st count]==0) {
                [st addObject:@"/"];
            }else{
                while([st count]!=0){
                    NSString * op = [st objectAtIndex:[st count]-1];
                    if ([op isEqual:@"+"]||[op isEqual:@"-"]) {
                        break;
                    }
                    if ([op isEqual:@"("]) {
                        break;
                    }
                    [ans addObject:op];
                    [st removeObjectAtIndex:[st count]-1];
                }
                [st addObject:s1];
            }
        }else if([s1 isEqual:@"("]){
            [st addObject:s1];
        }else if([s1 isEqual:@")"]){
            while([st count]!=0){
                NSString * op = [st objectAtIndex:[st count]-1];
                if ([op isEqual:@"("]) {
                    [st removeObjectAtIndex:[st count]-1];
                    break;
                }
                [ans addObject:op];
                [st removeObjectAtIndex:[st count]-1];
            }
        }else{
            [ans addObject:s1];
        }
        input = [input substringFromIndex:k];
    }
    while([st count]!=0){
        NSString * op = [st objectAtIndex:[st count]-1];
        [ans addObject:op];
        [st removeObjectAtIndex:[st count]-1];
    }
//    NSLog(@"%@",ans);
    int i;
    for (i = 0; i<[ans count]; i++) {
        NSString *s = [ans objectAtIndex:i];
        if ([s isEqual:@"+"]) {
            NSString * op1 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            NSString * op2 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            double a = [op1 doubleValue];
            double b = [op2 doubleValue];
            double c = a+b;
            NSNumber *result = [NSNumber numberWithDouble:c];
            NSString *Result = [NSString stringWithFormat:@"%@",result];
            [st addObject:Result];
        }else if ([s isEqual:@"-"]) {
            NSString * op1 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            NSString * op2 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            double a = [op1 doubleValue];
            double b = [op2 doubleValue];
            double c = b-a;
            NSNumber *result = [NSNumber numberWithDouble:c];
            NSString *Result = [NSString stringWithFormat:@"%@",result];
            [st addObject:Result];
        }else if ([s isEqual:@"*"]) {
            NSString * op1 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            NSString * op2 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            double a = [op1 doubleValue];
            double b = [op2 doubleValue];
            double c = a*b;
            NSNumber *result = [NSNumber numberWithDouble:c];
            NSString *Result = [NSString stringWithFormat:@"%@",result];
            [st addObject:Result];
        }else if ([s isEqual:@"/"]) {
            NSString * op1 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            NSString * op2 = [st objectAtIndex:[st count]-1];
            [st removeObjectAtIndex:[st count]-1];
            double a = [op1 doubleValue];
            double b = [op2 doubleValue];
            if (!a) {
                return @"ERRER";
            }
            double c = b/a;
            NSNumber *result = [NSNumber numberWithDouble:c];
            NSString *Result = [NSString stringWithFormat:@"%@",result];
            [st addObject:Result];
        }else{
            [st addObject:s];
        }
        
    }
    NSString *output = @"";
    if ([st count]) {
        output = [st objectAtIndex:0];
//        NSLog(@"1");
    }
    
//    NSLog(@"%@",output);
    return output;
}

@end
