

#import <UIKit/UIKit.h>

@interface UIColor (Addition)

+ (instancetype)ay_colorWithHex:(int32_t)hex;

+ (instancetype)ay_colorWithR:(int)red G:(int)green B:(int)blue alpha:(CGFloat)alpha;

+ (instancetype)ay_randomColor;
@end
