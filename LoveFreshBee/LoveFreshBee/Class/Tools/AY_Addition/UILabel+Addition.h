

#import <UIKit/UIKit.h>

@interface UILabel (Addition)
/// 创建文本标签
///
/// @param text     文本
/// @param color    颜色
/// @param fontSize 字体大小
///
/// @return UILabel
+ (UILabel *)ay_labelWithText:(NSString *)text color:(UIColor *)color font:(CGFloat)fontSize;
@end
