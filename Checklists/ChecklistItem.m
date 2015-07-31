//
//  ChecklistItem.m
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem
- (void)toggleChecked{
    self.checked = !self.checked;
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if((self = [super init])){
        self.text = [aDecoder decodeObjectForKey:@"Text"];
        self.checked = [aDecoder decodeObjectForKey:@"Checked"];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.text forKey:@"Text"];
    [aCoder encodeBool:self.checked forKey:@"Checked"];
}
@end
