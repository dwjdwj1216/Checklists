//
//  AddItemViewController.h
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddItemViewController;
@class ChecklistItem;

@protocol AddItemViewControllerDelegate <NSObject>

- (void)addItemViewControllerDidCancel:(AddItemViewController *)controller;
- (void)AddItemViewController:(AddItemViewController *)controller didFinishAddingItem:(ChecklistItem *)item;
- (void)AddItemViewController:(AddItemViewController *)controller didFinishEditingItem:(ChecklistItem *)item;
@end

@interface AddItemViewController : UITableViewController<UITextFieldDelegate>
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBatButton;
@property (strong, nonatomic) ChecklistItem *itemToEdit;
@property (weak, nonatomic)id <AddItemViewControllerDelegate>delegate;
@end
