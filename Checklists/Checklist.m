//
//  Checklist.m
//  Checklists
//
//  Created by 戴王炯 on 15/7/31.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import "Checklist.h"
#import "ChecklistItem.h"
@implementation Checklist
- (id)init{
    if((self = [super init])){
        self.items = [[NSMutableArray alloc]initWithCapacity:20];
        self.iconName = @"Appointments";
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if((self = [super init])){
        self.name = [aDecoder decodeObjectForKey:@"Name"];
        self.items = [aDecoder decodeObjectForKey:@"Items"];
        self.iconName = [aDecoder decodeObjectForKey:@"IconName"];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"Name"];
    [aCoder encodeObject:self.items forKey:@"Items"];
    [aCoder encodeObject:self.iconName forKey:@"IconName"];
}

- (NSComparisonResult)compare:(Checklist *)otherChecklist{
    return [self.name localizedStandardCompare:otherChecklist.name];
}

- (int)countUncheckedItems{
    int count = 0;
    for(ChecklistItem *item in self.items){
        if(!item.checked){
            count++;
        }
    }
    return count;
}
@end
