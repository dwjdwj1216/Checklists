//
//  DataModel.h
//  Checklists
//
//  Created by 戴王炯 on 15/8/1.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

@property (nonatomic, strong)NSMutableArray *lists;
-(void)saveChecklists;
-(void)sortChecklists;
-(NSInteger)indexOfSelectedChecklist;
-(void)setIndexOfSelectedChecklist:(NSInteger)index;
+(NSInteger)nextChecklistItemId;
@end
