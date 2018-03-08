//
//  main.m
//  HGPersonTer
//
//  Created by  ZhuHong on 2018/3/8.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HGPerson.h"

int main(int argc, const char * argv[]) {
    // 代码一,二,三,四分别打开运行方能看到正确结果
    @autoreleasepool {
        {
            // 代码一 (全部正常销毁)
//            [HGPerson newPerson];
//            [HGPerson copyPerson];
//            [HGPerson cusPerson];
        }
        {
            // 代码二 (只有cusPerson正常销毁)
//            [HGPerson performSelector:@selector(newPerson)];
//            [HGPerson performSelector:@selector(copyPerson)];
//            [HGPerson performSelector:@selector(cusPerson)];
        }
    }
    
    {
        // 代码三 (cusPerson没正常销毁)
//        [HGPerson newPerson];
//        [HGPerson copyPerson];
//        [HGPerson cusPerson];
        { // 如果把上面的这行代码换成这样的, 就可以正常销毁
//            HGPerson* person = [HGPerson cusPerson];
//            person = nil;
        }
    }
    {
        // 代码四 (都没有销毁)
        [HGPerson performSelector:@selector(newPerson)];
        [HGPerson performSelector:@selector(copyPerson)];
        [HGPerson performSelector:@selector(cusPerson)];
        { // 这样也不行
//            HGPerson* person = [HGPerson performSelector:@selector(newPerson)];
//            person = nil;
        }
    }
    
    NSLog(@"别看了, 执行结束了");
    
    return 0;
}
