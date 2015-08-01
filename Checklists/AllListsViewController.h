//
//  AllListsViewController.h
//  Checklists
//
//  Created by 戴王炯 on 15/7/31.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListDetailViewController.h"

@class DataModel;
@interface AllListsViewController : UITableViewController<ListDetailViewControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong)DataModel *dataModel;

@end
