//
//  main.m
//  test1
//
//  Created by Bin on 2020/7/16.
//  Copyright © 2020 Bin. All rights reserved.
//

// Next Step

#import <Foundation/Foundation.h>


// 定义一个类（有点类似接口？）
@interface Student : NSObject
{
    NSString * _name;
    NSInteger _age;
}

- (id)init;

// 实例方法
- (void) setName: (NSString *)name;
- (void) setAge: (NSInteger)age;
- (void) setName: (NSString *)name andAge:(NSInteger)age;

// 匿名方法
- (void) setName: (NSString *)name :(NSInteger)age;

- (NSString *)name;
- (NSInteger)age;

// 类方法（有点类似静态方法？）
+ (void) testStudent;


@end


@implementation Student

- (id)init
{
    self = [super init];
    if(self) {
        _name = @"Bin";
        _age = 12;
    }
    return self;
}

- (void)setName:(NSString *)name
{
    _name = name;
}


- (void)setAge:(NSInteger)age
{
    _age = age;
}

- (void)setName:(NSString *)name andAge:(NSInteger)age
{
    _name = name;
    _age = age;
}

- (void)setName:(NSString *)name :(NSInteger)age
{
    _name = name;
    _age = age;
}

- (NSString *)name
{
    return _name;
}

- (NSInteger)age
{
    return _age;
}

+ (void)testStudent
{
    Student *stu = [[Student alloc] init];
    [stu setName:@"小红" : 21];
    NSLog(@"类方法输出  name = %@，age = %li", [stu name], [stu age]);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Student *stu = [[Student alloc] init];
        
        NSLog(@"name = %@，age = %li", [stu name] , [stu age]);
        
        [stu setName:@"小宁"];
        [stu setAge:30];
        
        NSLog(@"修改后 or name = %@，age = %li", [stu name], [stu age]);
        
        // 调用类方法
        [Student testStudent];
        
        
    }
    return 0;
}
