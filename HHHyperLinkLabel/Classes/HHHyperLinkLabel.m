//
//  HHHyperLinkLabel.m
//  Pods
//
//  Created by 黄河 on 2017/6/3.
//
//

#import "HHHyperLinkLabel.h"
#import "HHFrameParser.h"
#import <CoreText/CoreText.h>

@implementation HHHyperLinkLabel

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    if (!self.data) {
        return;
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CTFrameDraw(self.data.frameRef, context);
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setNeedsDisplay];
}

- (void)setData:(HHCoreTextData *)data {
    _data = data;
    [self setNeedsDisplay];
}
@end
