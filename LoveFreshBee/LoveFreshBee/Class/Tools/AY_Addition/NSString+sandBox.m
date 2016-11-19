//


#import "NSString+sandBox.h"

@implementation NSString (sandBox)
//获取沙盒的cache目录
- (instancetype)ay_appdendCache
{/*
    // 获取cache文件目录
    NSString *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    
    // 获取文件名字
    NSString *name = [self lastPathComponent];
    
    // 路径拼接文件名
    NSString *filePath = [path stringByAppendingPathComponent:name];

    return filePath;
  */
    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:[self lastPathComponent]];
}
//document
- (instancetype)ay_appdendDocument
{
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:[self lastPathComponent]];
}
//temp
- (instancetype)ay_appdendTemp
{
    return [NSTemporaryDirectory() stringByAppendingPathComponent:[self lastPathComponent]];
}
@end




