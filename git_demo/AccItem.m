//
//  AccItem.m
//  git_demo
//
//  Created by Janicevs, Edgars on 1/23/15.
//  Copyright (c) 2015 EdgarYanichev. All rights reserved.
//

#import "AccItem.h"

@implementation AccItem

- (id) initWithName:(NSString *)initName ID:(NSString *)initID Value:(int)initValue
{
    self = [super init];
    if (self) {
        [self setItemValue:initValue];
        [self setItemName:initName];
        [self setItemID:initID];
    }
    return self;
}

- (void) setItemValue:(int)value
{
    itemValue = value;
}

- (int) getItemValue
{
    return itemValue;
}

@end
