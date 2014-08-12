//
//  LFCGzipUtillity.h
//  TechownShow
//
//  Created by kaitiren on 12-8-27.
//  Copyright (c) 2012年 kaitiren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zlib.h"

@interface LFCGzipUtillity : NSObject

+ (NSData *)gzipData:(NSData *)pUncompressedData;
+ (NSData *)uncompressZippedData:(NSData *)compressedData;
@end
