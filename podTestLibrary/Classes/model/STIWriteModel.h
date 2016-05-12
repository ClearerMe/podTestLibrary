//
//  STIWriteModel.h
//  STing
//
//  Created by QFish on 1/6/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "STIModel.h"

/**
 *  写操作成功后回调 Block
 *
 *  @param data    新增数据，如果获取整个列表，可以
 *  @param changed 数据是否与上次一样
 *  @param error   错误信息，如果不为空，则说明出错
 */
typedef void (^STIWriteModelBlock)(id error);

/**
 *  写操作
 *
 *  example:
 *  
 *  - (void)writeThen:(STIWriteModelBlock)then;
 *  - (void)publishFeed:(Feed*)feed then:(STIWriteModelBlock)then;
 */
@interface STIWriteModel : STIModel
@end
