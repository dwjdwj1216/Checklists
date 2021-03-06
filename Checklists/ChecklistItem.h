//
//  ChecklistItem.h
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject<NSCoding>

@property(nonatomic,copy)NSString *text;
@property(nonatomic,copy)NSDate *dueDate;
@property(nonatomic,assign)BOOL shouldRemind;
@property(nonatomic,assign)NSInteger itemId;
@property(nonatomic,assign)BOOL checked;
-(void)toggleChecked;
-(void)scheduleNotification;
@end
