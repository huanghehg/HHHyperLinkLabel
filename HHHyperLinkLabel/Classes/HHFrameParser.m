//
//  HHFrameParser.m
//  Pods
//
//  Created by 黄河 on 2017/6/6.
//
//

#import "HHFrameParser.h"

@implementation HHFrameParser

+ (HHCoreTextData *)frameParserWithAttributedString:(NSAttributedString *)attributedString
                                              width:(CGFloat)width {
    
    
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attributedString);
    
    CGSize restrictSize = CGSizeMake(width, CGFLOAT_MAX);
    CGSize coreTextSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, CFRangeMake(0, 0), nil, restrictSize, nil);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0, 0, width, coreTextSize.height));
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, attributedString.length), path, NULL);
    HHCoreTextData *coreTextData = [[HHCoreTextData alloc] init];
    coreTextData.frameRef = frame;
    coreTextData.height = coreTextSize.height;
    CFRelease(framesetter);
    CFRelease(path);
    return coreTextData;
}

- (CGFloat)heightWithFrame {
    return 0;
}



@end
