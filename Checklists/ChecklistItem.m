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
@end
