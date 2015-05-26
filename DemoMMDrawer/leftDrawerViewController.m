//
//  leftDrawerViewController.m
//  DemoMMDrawer
//
//  Created by Admin on 26/5/15.
//  Copyright (c) 2015年 biz.ourmi. All rights reserved.
//

#import "leftDrawerViewController.h"
#import "rootViewController.h"
#import "leftDrawerTableViewCell.h"
#import "UIViewController+MMDrawerController.h"

@interface leftDrawerViewController ()

@end

@implementation leftDrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.leftDrawerTableView.dataSource=self;
    self.leftDrawerTableView.delegate=self;
//    
//    leftDrawMenuLists=[NSArray arrayWithObjects:@"Row one",@"Row Tow",@"Row Three",@"Row Four" ,nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSUInteger)tableView:(UITableView *)tableView
{
    return [leftDrawMenuLists count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    leftDrawerTableViewCell *cell=(leftDrawerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"leftDrawerCell" forIndexPath:indexPath];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    cell.lbTableRowShow.text=[leftDrawMenuLists objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished)
     {
         rootViewController *centerViewController = (rootViewController*)[(UINavigationController *)self.mm_drawerController.centerViewController topViewController];
         centerViewController.lbTbabLeRowShow.text = [leftDrawMenuLists objectAtIndex:indexPath.row];
     }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
