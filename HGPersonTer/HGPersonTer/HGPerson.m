//
//  HGPersonModel.m
//  HGPerson
//
//  Created by  ZhuHong on 2018/3/8.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

// 这样的代码无需注释?

#import "HGPerson.h"

@implementation HGPerson

+ (instancetype)newPerson {
    HGPerson* p = [[HGPerson alloc] init];
    p.name = NSStringFromSelector(_cmd);
    return p;
}

+ (instancetype)copyPerson {
    HGPerson* p = [[HGPerson alloc] init];
    p.name = NSStringFromSelector(_cmd);
    return p;
}

+ (instancetype)cusPerson {
    HGPerson* p = [[HGPerson alloc] init];
    p.name = NSStringFromSelector(_cmd);
    return p;
}

- (void)dealloc {
    NSLog(@"我走了 %@", _name);
}

@end
