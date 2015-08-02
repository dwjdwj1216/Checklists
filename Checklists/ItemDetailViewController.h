//
//  AddItemViewController.h
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ItemDetailViewController;
@class ChecklistItem;

@protocol ItemDetailViewControllerDelegate <NSObject>

- (void)itemDetailViewControllerDidCancel:(ItemDetailViewController *)controller;
- (void)ItemDetailViewController:(ItemDetailViewController *)controller didFinishAddingItem:(ChecklistItem *)item;
- (void)ItemDetailViewController:(ItemDetailViewController *)controller didFinishEditingItem:(ChecklistItem *)item;
@end

@interface ItemDetailViewController : UITableViewController<UITextFieldDelegate>
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *switchControl;
@property (weak, nonatomic) IBOutlet UILabel *dueDateLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBatButton;
@property (strong, nonatomic) ChecklistItem *itemToEdit;
@property (weak, nonatomic)id <ItemDetailViewControllerDelegate>delegate;
@end
