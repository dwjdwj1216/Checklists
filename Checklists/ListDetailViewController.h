//
//  ListDetailViewController.h
//  Checklists
//
//  Created by 戴王炯 on 15/7/31.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IconPickerViewController.h"
@class ListDetailViewController;
@class Checklist;

@protocol ListDetailViewControllerDelegate <NSObject>

- (void)listDetailViewControllerDidCancel:(ListDetailViewController *)controller;
- (void)listDetailViewController:(ListDetailViewController *)controller didFinishAddingChecklist:(Checklist *)checklist;
- (void)listDetailViewController:(ListDetailViewController *)controller didFinishEditingChecklist:(Checklist *)checklist;

@end

@interface ListDetailViewController : UITableViewController<UITextFieldDelegate,IconPickerViewControllerDelegate>
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic)id <ListDetailViewControllerDelegate>delegate;
@property (strong, nonatomic) Checklist *checklistToEdit;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@end
