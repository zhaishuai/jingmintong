//
//  PMBViewController.m
//  PoliceMessageBoard
//
//  Created by jimzhai on 14-3-22.
//  Copyright (c) 2014年 zhaishuai. All rights reserved.
//

#import "PMBViewController.h"
#import "PMBChapterTableViewController.h"

@interface PMBViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation PMBViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillDisappear:animated];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置主界面label的样式（圆角）
    self.label.layer.borderWidth  = 1.0f;
    self.label.layer.borderColor  = [UIColor darkGrayColor].CGColor;
    self.label.layer.cornerRadius = 8.0f;
    //设置navigationbar的背景图片
    UIImage *img = [self scaleToSize:[UIImage imageNamed:@"newbar.png"] size:self.navigationController.navigationBar.frame.size];
    [[UINavigationBar appearance] setBackgroundImage:img forBarMetrics:UIBarMetricsDefault];
    //设置navigationbar的背景图片阴影
    self.navigationController.navigationBar.layer.masksToBounds = NO;
    //设置阴影的高度
    self.navigationController.navigationBar.layer.shadowOffset = CGSizeMake(0, 3);
    //设置透明度
    self.navigationController.navigationBar.layer.shadowOpacity = 0.6;
    self.navigationController.navigationBar.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.navigationController.navigationBar.bounds].CGPath;
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    }else{
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    }
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
    shadow.shadowOffset = CGSizeMake(0, 1);
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0], NSForegroundColorAttributeName,
                                                           shadow, NSShadowAttributeName,
                                                           [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:21.0], NSFontAttributeName, nil]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    self.navigationController.navigationBarHidden = NO;
    [segue.destinationViewController setNavigateBarTitle:[[sender titleLabel] text]];
    if([[[sender titleLabel] text] isEqualToString:@"户政服务"])
        [segue.destinationViewController initArticalTitleBooklet];
    else if([[[sender titleLabel] text] isEqualToString:@"车管业务"])
        [segue.destinationViewController initArticalTitleTrafficLight];
    else if([[[sender titleLabel] text] isEqualToString:@"出境指南"])
        [segue.destinationViewController initArticalTitleChuRuJing];
    else if([[[sender titleLabel] text] isEqualToString:@"以案析法"])
        [segue.destinationViewController initArticalTitleYiAnXiFa];
    else if([[[sender titleLabel] text] isEqualToString:@"防范常识"])
        [segue.destinationViewController initArticalTitleFangFanChanShi];
    else if([[[sender titleLabel] text] isEqualToString:@"便民贴士"])
        [segue.destinationViewController initArticalTitleBianMinTieShi];
    [self.navigationItem setTitle:@"返回"];
}


- (IBAction)goToChapterTableView:(UIButton *)sender {
    [self performSegueWithIdentifier:@"chapterTableView" sender:sender];
    
}

- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}

@end
