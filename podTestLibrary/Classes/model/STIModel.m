//
//  STIModel.m
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "STIModel.h"

@interface STIModel ()
@end

@implementation STIModel

- (instancetype)init
{
	self = [super init];
	if (self) {
	}
	return self;
}

- (NSString *)cacheKey
{
    return [[self class] description];
}

- (void)loadCache {}
- (void)saveCache {}
- (void)clearCache {}

@end
