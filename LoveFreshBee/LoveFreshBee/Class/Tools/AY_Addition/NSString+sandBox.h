//


#import <Foundation/Foundation.h>

@interface NSString (sandBox)
//获取沙盒的cache目录
- (instancetype)ay_appdendCache;
//document
- (instancetype)ay_appdendDocument;
//temp
- (instancetype)ay_appdendTemp;
@end
