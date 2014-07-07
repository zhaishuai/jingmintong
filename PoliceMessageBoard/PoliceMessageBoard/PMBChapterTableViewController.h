//
//  PMBChapterTableViewController.h
//  PoliceMessageBoard
//
//  Created by jimzhai on 14-3-23.
//  Copyright (c) 2014年 zhaishuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PMBChapterTableViewController : UITableViewController
- (void)setNavigateBarTitle:(NSString *)title;
- (void)initArticalTitleBooklet;
- (void)initArticalTitleTrafficLight;
- (void)initArticalTitleChuRuJing;
- (void)initArticalTitleYiAnXiFa;
- (void)initArticalTitleFangFanChanShi;
- (void)initArticalTitleBianMinTieShi;
@end
