//
//  HHCoreTextDataUtil.m
//  Pods
//
//  Created by 黄河 on 2017/6/16.
//
//

#import "HHCoreTextDataUtil.h"

@implementation HHCoreTextDataUtil

+ (HHCoreTextLinkModel *)linkModelWithPoint:(CGPoint)touchPoint
                                       view:(UIView *)touchView
                                       data:(HHCoreTextData *)data {
//    CFIndex idx =
    return nil;
}

+ (CFIndex)touchContentOffsetInView:(UIView *)touchView
                           andPoint:(CGPoint)touchPoint
                               data:(HHCoreTextData *)data {
    CTFrameRef frame = data.frameRef;
    CFArrayRef lines = CTFrameGetLines(frame);
    if (!lines) {
        return -1;
    }
    CFIndex count = CFArrayGetCount(lines);
    CGPoint origins[count];
    CTFrameGetLineOrigins(frame, CFRangeMake(0, 0), origins);
    
    CGAffineTransform transform = CGAffineTransformMakeTranslation(0, touchView.bounds.size.height);
    transform = CGAffineTransformScale(transform, 1.0, -1.0);
    
    CFIndex idx = -1;
    for (int i = 0; i < count; i ++) {
        CGPoint origin = origins[i];
        CTLineRef lineRef = CFArrayGetValueAtIndex(lines, i);
        
    }
}

+ (CGRect)getLineBounds:(CTLineRef)line point:(CGPoint)point {
    
}

@end
