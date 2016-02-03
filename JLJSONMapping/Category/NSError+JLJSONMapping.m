//
//  NSError+JLJSONMapping.m
//  JLJSONMapping
//
//  Created by Joshua Liebowitz on 1/16/15.
//  Copyright (c) 2015 Joshua Liebowitz. All rights reserved.
//

#import "NSError+JLJSONMapping.h"

@implementation NSError (FABJLJSONMapping)

+ (NSError *)errorWithReason:(FABJLDeserializationError)reason reasonText:(NSString *)reasonText description:(NSString *)description
{
    NSMutableDictionary *infoDict = [[NSMutableDictionary alloc] init];
    if (reasonText) {
        [infoDict setObject:reasonText forKey:@"FABJLObjectMappingDetailedFailureReasonKey"];
    }
    if (description) {
        [infoDict setObject:description forKey:@"FABJLObjectMappingDescriptionKey"];
    }
    return [NSError errorWithDomain:@"com.fabric.objectmapping" code:reason userInfo:([infoDict count] > 0) ? infoDict : nil];
}

@end
