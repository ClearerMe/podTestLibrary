//
//  STIReadModel.h
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "STIModel.h"

@interface STIReadModel : STIModel

/**
 *  是否加从数据源获取过数据，加载缓存不改变这个值
 */
@property (nonatomic, assign) BOOL loaded;

/**
 *  数据是否为空
 *
 *  条件：无数据
 */
@property (nonatomic, assign, readonly) BOOL isEmpty;

/**
 *  刷新数据
 */
- (void)refresh;

@end
