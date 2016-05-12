//
//  STIStreamModel.m
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "STIStreamModel.h"

@implementation STIStreamModel

- (instancetype)init
{
	self = [super init];
	if (self) {
		_items = [NSMutableArray array];
	}
	return self;
}

- (BOOL)isEmpty
{
	return nil == self.items || 0 == self.items.count;
}

- (void)loadMore
{
	NSAssert(NO, @"Must be overwrite");
}

#pragma mark -

- (NSString *)cacheKey
{
	return NSStringFromClass(self.class);
}

- (void)loadCache
{
	NSArray * items = [STICache objectForKey:[self cacheKey]];
	
	if ( items )
	{
        [self.items removeAllObjects];
		[self.items addObjectsFromArray:items];
	}
}

- (void)saveCache
{
	[STICache setObject:self.items forKey:[self cacheKey]];
}

- (void)clearCache
{
	[STICache removeObjectForKey:[self cacheKey]];
}

@end
