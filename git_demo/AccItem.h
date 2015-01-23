//
//  AccItem.h
//  git_demo
//
//  Created by Janicevs, Edgars on 1/23/15.
//  Copyright (c) 2015 EdgarYanichev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccItem : NSObject
{
    int itemValue;
}
@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *itemID;

- (void) setItemValue: (int)value;
- (int) getItemValue;
- (id) initWithName:(NSString*)initName ID:(NSString*)initID Value:(int)initValue;
@end
