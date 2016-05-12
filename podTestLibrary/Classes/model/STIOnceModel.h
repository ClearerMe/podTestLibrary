//
//  STIOnceModel.h
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
 *  @param data    新增数据，如果获取整个列表，可以
 *  @param changed 数据是否与上次一样
 *  @param error   错误信息，如果不为空，则说明出错
 */
typedef void (^STIOnceModelBlock)(id error);

/**
 *  用于拉取不需要分页的数据，比如：详情等
 */
@interface STIOnceModel : STIReadModel

@property (nonatomic, strong) id item;

/**
 *  获取数据回调 Block
 */
@property (nonatomic, copy) STIOnceModelBlock whenUpdated;

@end
