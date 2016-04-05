//
//  ReturnModel.m
//  DataSource
//
//  Created by lightman on 15/10/13.
//  Copyright © 2015年 lightman. All rights reserved.
//

#import "ReturnModel.h"
#import "TestModel.h"

@implementation ReturnModel

+ (instancetype)returnModel
{
    return [[self alloc] init];
}


- (NSArray *)returnData
{
    TestModel *model1 = [[TestModel alloc] initWithName:@"1111"];
    TestModel *model2 = [[TestModel alloc] initWithName:@"2222"];
    TestModel *model3 = [[TestModel alloc] initWithName:@"3333"];
    TestModel *model4 = [[TestModel alloc] initWithName:@"4444"];
    TestModel *model5 = [[TestModel alloc] initWithName:@"5555"];
    
    TestModel *model6 = [[TestModel alloc] initWithName:@"6666"];
    TestModel *model7 = [[TestModel alloc] initWithName:@"7777"];
    TestModel *model8 = [[TestModel alloc] initWithName:@"8888"];
    TestModel *model9 = [[TestModel alloc] initWithName:@"9999"];
    TestModel *model10 = [[TestModel alloc] initWithName:@"101010"];
    
    
    NSArray *arr = @[@[model1,model2,model3,model4,model5],@[model6,model7,model8,model9,model10]];
    return arr;
}




@end
