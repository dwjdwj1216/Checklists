//
//  ViewController.h
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDetailViewController.h"

@class Checklist;
@interface ChecklistViewController : UITableViewController <ItemDetailViewControllerDelegate>

@property (nonatomic, strong)Checklist *checklist;

@end

