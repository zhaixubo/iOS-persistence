//
//  ViewController.m
//  iOS持久化测试
//
//  Created by 翟旭博 on 2023/7/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    //获取沙盒根路径
    //    NSString *path = NSHomeDirectory();
    //    NSLog(@"沙盒根路径：%@", path);
    //    //Document路径
    //    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //    NSLog(@"Document目录路径：%@", docDir);
    //    // 获取Library的目录路径
    //    NSString *libDir = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) lastObject];
    //    NSLog(@"Libarary目录路径：%@", libDir);
    //    // 获取Caches目录路径
    //    NSString *cachesDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    //    NSLog(@"Cacheas目录路径：%@", cachesDir);
    //    // library Preference
    //    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //    NSLog(@"偏好设置目录路径：%@", defaults);
    //    // 获取tmp目录路径
    //    NSString *tmpDir =  NSTemporaryDirectory();
    //    NSLog(@"tmp目录路径：%@", tmpDir);
    
    
    
    
//    // 获取 Document 文件目录
//    NSString *docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
//    NSLog(@"%@", docPath);
//    // 在 Document 目录下新建一个 test.plist 文件
//    NSString * filePath = [docPath stringByAppendingPathComponent:@"test.plist"];
//
//    // 存字典，将字典数据存到刚才的 test.plist 文件
//    NSDictionary* dict = @{ @"name" :@"zxb10", @"age" : @"20" };
//    [dict writeToFile:filePath atomically:YES];
//
//    // 取字典，从刚才的 test.plist 文件中取出字典数据
//    NSDictionary* dictA = [NSDictionary dictionaryWithContentsOfFile:filePath];
//    NSLog(@"%@", dictA);
//
//    // 存数组
//    NSArray* array = @[@"zxb10", @"20"];
//    [array writeToFile:filePath atomically:YES];
//
//    // 取数组
//    NSArray* arrayA = [NSArray arrayWithContentsOfFile:filePath];
//    NSLog(@"%@", arrayA);
 
    // 获取偏好设置对象
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //存储数据
    [defaults setObject:@"zxb10" forKey:@"name"];
    [defaults setObject:@"zxbnb666" forKey:@"password"];

    // 同步调用，立刻写到文件中，不写这个方法会异步，有延迟
    [defaults synchronize];

    // 需要验证账号密码的地方，获取偏好设置对象
    NSUserDefaults *defaultsA = [NSUserDefaults standardUserDefaults];
    NSString *name = [defaultsA objectForKey:@"name"];
    NSString *password = [defaultsA objectForKey:@"password"];
    NSLog(@"name:%@ password:%@", name, password);
}

@end
