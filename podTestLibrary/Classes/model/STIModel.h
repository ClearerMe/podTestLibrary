//
//  STIModel.h
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STIModel : NSObject

@property (nonatomic, strong, readonly) NSString * cacheKey;

- (void)loadCache;
- (void)saveCache;
- (void)clearCache;

@end
