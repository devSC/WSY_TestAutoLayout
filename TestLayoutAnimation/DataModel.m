//
//  DataModel.m
//  TestLayoutAnimation
//
//  Created by Andou on 14/10/24.
//  Copyright (c) 2014年 SCDev. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

+ (void)getDictionary:(void (^)(NSDictionary *))result
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSDictionary *dictionary = @{@"1": @"1111",@"2": @"2222",@"3": @"3333",@"4": @"4444",@"5": @"5555",@"6": @"6666"};
        result (dictionary);
        
    });
}
@end
