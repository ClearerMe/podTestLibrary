//
//  STIStreamModel.h
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "STIReadModel.h"

/**
 *  获取数据回调 Block
 *
 *  @param error   错误信息，如果不为空，则说明出错
 */
typedef void (^STIStreamModelBlock)(id error);

@interface STIStreamModel : STIReadModel

/**
 *  是否还有更多数据，用于上拉加载更多等场景
 */
@property (nonatomic, assign) BOOL more;
@property (nonatomic, assign) NSInteger currentPage;

@property (nonatomic, strong) NSMutableArray * items;

/**
 *  获取数据回调 Block
 */
@property (nonatomic, copy) STIStreamModelBlock whenUpdated;

/**
 *  加载跟多数据
 */
- (void)loadMore;

@end
