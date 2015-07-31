//
//  ListDetailViewController.m
//  Checklists
//
//  Created by 戴王炯 on 15/7/31.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import "ListDetailViewController.h"
#import "Checklist.h"
@interface ListDetailViewController ()

@end

@implementation ListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(self.checklistToEdit != nil){
        self.title = @"Edit Checklist";
        self.textField.text = self.checklistToEdit.name;
        self.doneBatButton.enabled = YES;
        
    }
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self.delegate listDetailViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender {
    if(self.checklistToEdit == nil){
        Checklist *checklist = [[Checklist alloc]init];
        checklist.name = self.textField.text;
        [self.delegate listDetailViewController:self didFinishAddingChecklist:checklist];
    }else{
        self.checklistToEdit.name = self.textField.text;
        [self.delegate listDetailViewController:self didFinishEditingChecklist:self.checklistToEdit];
    }
    
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
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
