//
//  HHFrameParser.h
//  Pods
//
//  Created by 黄河 on 2017/6/6.
//
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>
#import "HHCoreTextData.h"

@interface HHFrameParser : NSObject

+ (HHCoreTextData *)frameParserWithAttributedString:(NSAttributedString *)attributedString
                                              width:(CGFloat)width;

@end
