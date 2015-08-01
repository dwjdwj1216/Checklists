//
//  IconPickerViewControllerTableViewController.h
//  Checklists
//
//  Created by 戴王炯 on 15/8/1.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IconPickerViewController;
@protocol IconPickerViewControllerDelegate <NSObject>

-(void)iconPicker:(IconPickerViewController *)picker didPickIcon:(NSString *)iconName;

@end
@interface IconPickerViewController : UITableViewController

@property (nonatomic, weak)id <IconPickerViewControllerDelegate>delegate;

@end
