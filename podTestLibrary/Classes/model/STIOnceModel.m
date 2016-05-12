//
//  STIOnceModel.m
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "STIOnceModel.h"

@implementation STIOnceModel

- (BOOL)isEmpty
{
	return nil == self.item;
}

#pragma mark -

- (NSString *)cacheKey
{
	return NSStringFromClass(self.class);
}

- (void)loadCache
{
	self.item = [STICache objectForKey:[self cacheKey]];
}

- (void)saveCache
{
	[STICache setObject:self.item forKey:[self cacheKey]];
}

- (void)clearCache
{
	[STICache removeObjectForKey:[self cacheKey]];
}

@end
