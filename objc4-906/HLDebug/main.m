//
//  main.m
//  HLDebug
//
//  Created by Hanley Lee on 2024/1/29.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
//#import "HLPerson.h"

@interface TestObject : NSObject

@end

@implementation TestObject

@end

@interface HLPerson : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *hooby;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) double height;

@end

@implementation HLPerson

+ (void)initialize {
    NSLog(@"HLPerson initialize");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        HLPerson *obj = [[HLPerson alloc] init];
        NSLog(@"%zd", class_getInstanceSize(obj.class));
    }
    return 0;
}
