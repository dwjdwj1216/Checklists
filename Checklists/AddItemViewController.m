//
//  AddItemViewController.m
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import "AddItemViewController.h"
#import "ChecklistItem.h"
@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.itemToEdit != nil){
        self.title = @"Edit Item";
        self.textField.text = self.itemToEdit.text;
        self.doneBatButton.enabled = YES;
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancel:(id)sender {
    [self.delegate addItemViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender {
    if(self.itemToEdit == nil){
        ChecklistItem *item = [[ChecklistItem alloc]init];
        item.text = self.textField.text;
        item.checked = NO;
        [self.delegate AddItemViewController:self didFinishAddingItem:item];
    }else{
        self.itemToEdit.text = self.textField.text;
        [self.delegate AddItemViewController:self didFinishEditingItem:self.itemToEdit];
    }
    
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    if([newText length]>0){
        self.doneBatButton.enabled = YES;
    }else {
        self.doneBatButton.enabled = NO;
    }
    return YES;
}
@end
