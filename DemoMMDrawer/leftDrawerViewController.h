//
//  leftDrawerViewController.h
//  DemoMMDrawer
//
//  Created by Admin on 26/5/15.
//  Copyright (c) 2015年 biz.ourmi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface leftDrawerViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    @private
    NSArray *leftDrawMenuLists;
}

@property (weak,nonatomic)IBOutlet UITableView *leftDrawerTableView;

@end
