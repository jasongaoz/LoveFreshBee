

#import "UILabel+Addition.h"

@implementation UILabel (Addition)
+ (UILabel *)ay_labelWithText:(NSString *)text color:(UIColor *)color font:(CGFloat)fontSize{
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:fontSize];
    
    return label;
}
@end
