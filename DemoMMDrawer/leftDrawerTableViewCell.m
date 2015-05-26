//
//  leftDrawerTableViewCell.m
//  DemoMMDrawer
//
//  Created by Admin on 26/5/15.
//  Copyright (c) 2015年 biz.ourmi. All rights reserved.
//

#import "leftDrawerTableViewCell.h"

@implementation leftDrawerTableViewCell

@synthesize lbTableRowShow;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}
-(void)prepareForReuse
{
    [super prepareForReuse];
    self.lbTableRowShow.text=nil;
}

@end
