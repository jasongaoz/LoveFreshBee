

#import "UIView+Frame.h"

@implementation UIView (Frame)
//重写getter方法
- (CGFloat)x {
    return self.frame.origin.x;
}

//重写setter方法
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)width {
    return self.bounds.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect bounds = self.bounds;
    bounds.size.width = width;
    self.bounds = bounds;
}


- (CGFloat)height {
    return self.bounds.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect bounds = self.bounds;
    bounds.size.height = height;
    self.bounds = bounds;
}


@end
