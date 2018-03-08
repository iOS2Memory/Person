//
//  HGPersonModel.h
//  HGPerson
//
//  Created by  ZhuHong on 2018/3/8.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

// 牛逼的代码无需注释

#import <Foundation/Foundation.h>

@interface HGPerson : NSObject

@property (nonatomic, copy) NSString* name;
// 打开注释 试试
//@property (nonatomic, copy) NSString* allocP;

+ (instancetype)newPerson;

+ (instancetype)copyPerson;

+ (instancetype)cusPerson;

@end
