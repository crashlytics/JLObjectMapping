//
//  NSError+JLJSONMapping.m
//  JLJSONMapping
//
//  Created by Joshua Liebowitz on 1/16/15.
//  Copyright (c) 2015 Joshua Liebowitz. All rights reserved.
//

#import "NSError+JLJSONMapping.h"

NSString * const kFABObjectMappingDomain = @"com.fabric.objectmapping";
NSString * const kFABObjectMappingDescriptionKey = @"FABJLObjectMappingDescriptionKey";
NSString * const kFABObjectMappingFailureReasonKey = @"FABJLObjectMappingDetailedFailureReasonKey";

@implementation NSError (FABJLJSONMapping)

void linkFABErrorCategory(){}

+ (NSError *)errorWithReason:(FABJLDeserializationError)reason reasonText:(NSString *)reasonText description:(NSString *)description
{
    NSMutableDictionary *infoDict = [[NSMutableDictionary alloc] init];
    if (reasonText) {
        [infoDict setObject:reasonText forKey:kFABObjectMappingFailureReasonKey];
    }
    if (description) {
        [infoDict setObject:description forKey:kFABObjectMappingDescriptionKey];
    }
    return [NSError errorWithDomain:kFABObjectMappingDomain code:reason userInfo:([infoDict count] > 0) ? infoDict : nil];
}

@end
