//
//  HHCoreTextDataUtil.h
//  Pods
//
//  Created by 黄河 on 2017/6/16.
//
//

#import <Foundation/Foundation.h>
#import "HHCoreTextLinkModel.h"
#import "HHCoreTextData.h"

@interface HHCoreTextDataUtil : NSObject

+ (HHCoreTextLinkModel *)linkModelWithPoint:(CGPoint)touchPoint
                                       view:(UIView *)touchView
                                       data:(HHCoreTextData *)data;

@end
