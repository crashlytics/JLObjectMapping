//
//  SimpleTestMappingObject.h
//  JLJSONMapping
//
//  Created by Joshua Liebowitz on 8/9/13.
//  Copyright (c) 2013 Joshua Liebowitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleTestMappingObject : NSObject

@property (nonatomic) NSInteger integer;
@property (nonatomic) NSDictionary *dictionary;
@property (nonatomic) NSDictionary *dictionaryOfSimpleObjects;
@property (nonatomic) SimpleTestMappingObject *testMappingObject;
@property (nonatomic) NSArray *arrayOfTestObjects;

@end
