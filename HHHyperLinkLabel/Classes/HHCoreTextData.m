//
//  HHCoreTextData.m
//  Pods
//
//  Created by 黄河 on 2017/6/6.
//
//

#import "HHCoreTextData.h"

@implementation HHCoreTextData



- (void)dealloc {
    if (self.frameRef) {
        CFRelease(self.frameRef);
        self.frameRef = nil;
    }
}

@end
