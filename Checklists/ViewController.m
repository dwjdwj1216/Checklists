//
//  ViewController.m
//  Checklists
//
//  Created by 戴王炯 on 15/7/30.
//  Copyright © 2015年 戴王炯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSString *_row0text;
    NSString *_row1text;
    NSString *_row2text;
    NSString *_row3text;
    NSString *_row4text;
    
    BOOL _row0checked;
    BOOL _row1checked;
    BOOL _row2checked;
    BOOL _row3checked;
    BOOL _row4checked;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _row0text = @"观看嫦娥飞天和玉兔升空视频";
    _row1text = @"了解Sony a7和MBP的最新价格";
    _row2text = @"复习苍老师的经典视频教程";
    _row3text = @"去电影院看地心引力";
    _row4text = @"看西甲巴萨新败的比赛回放";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
- (void)configureCheckmarkForCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath{
    BOOL isChecked = NO;
    if(indexPath.row == 0){
        isChecked = _row0checked;
    }else if (indexPath.row == 1){
        isChecked = _row1checked;
    }if (indexPath.row == 2){
        isChecked = _row2checked;
    }if (indexPath.row == 3){
        isChecked = _row3checked;
    }if (indexPath.row == 4){
        isChecked = _row4checked;
    }
    if(isChecked){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    if(indexPath.row == 0){
        label.text = _row0text;
    }else if (indexPath.row == 1){
        label.text = _row1text;
    }else if (indexPath.row == 2){
        label.text = _row2text;
    }else if (indexPath.row == 3){
        label.text = _row3text;
    }else if (indexPath.row == 4){
        label.text = _row4text;
    }
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    BOOL isChecked = NO;
    if(indexPath.row == 0){
        isChecked = _row0checked;
        _row0checked = !_row0checked;
    }else if (indexPath.row == 1){
        isChecked = _row1checked;
        _row1checked = !_row1checked;
    }if (indexPath.row == 2){
        isChecked = _row2checked;
        _row2checked = !_row2checked;
    }if (indexPath.row == 3){
        isChecked = _row3checked;
        _row3checked = !_row3checked;
    }if (indexPath.row == 4){
        isChecked = _row4checked;
        _row4checked = !_row4checked;
    }
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
