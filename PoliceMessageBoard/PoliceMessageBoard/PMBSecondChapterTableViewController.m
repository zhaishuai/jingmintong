//
//  PMBSecondChapterTableViewController.m
//  PoliceMessageBoard
//
//  Created by jimzhai on 14-3-23.
//  Copyright (c) 2014年 zhaishuai. All rights reserved.
//

#import "PMBSecondChapterTableViewController.h"
#import "PMBContentViewController.h"

@interface PMBSecondChapterTableViewController (){
    NSMutableArray *articalTitle;
    NSMutableArray *artical;
}


@end

@implementation PMBSecondChapterTableViewController

- (void)initParents{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"父母投靠子女人员(烟台六区以外)"];
    [artical addObject:@"把户口从他处（烟台六区以外）迁至家中，需要三个步骤，一是到解甲庄派出所办理准迁证"];

    [articalTitle addObject:@"父母投靠子女人员(六区之间迁入)"];
    [artical addObject:@"把户口从他处（莱山区以外其他五区）迁至家中，需要两个步骤，一是到解甲庄派出所办理准予迁入证明"];

    [articalTitle addObject:@"父母投靠子女人员(莱山区内迁入)"];
    [artical addObject:@"把夫妻一方户口从莱山区其他派出所迁至解甲庄派出所或解甲庄街道内迁移，准备好手续后"];
    
}

- (void)initCouple{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"夫妻投靠人员(烟台六区以外)"];
    [artical addObject:@"把户口从他处（烟台六区以外）迁至家中，需要三个步骤，一是到解甲庄派出所办理准迁证"];
    
    [articalTitle addObject:@"夫妻投靠人员(六区之间迁入)"];
    [artical addObject:@"把户口从他处（莱山区以外其他五区）迁至家中，需要两个步骤，一是到解甲庄派出所办理准予迁入证明"];
    
    [articalTitle addObject:@"夫妻投靠人员(莱山区内迁入)"];
    [artical addObject:@"把夫妻一方户口从莱山区其他派出所迁至解甲庄派出所或解甲庄街道内迁移"];
}

- (void)initchildren{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"子女投靠父母人员(六区以外迁入)"];
    [artical addObject:@"子女投靠父母中的子女是指未成年子女或成年未婚子女，不含离婚或丧偶者，且其父（母）户口在我区且有合法固定住所"];
    
    [articalTitle addObject:@"子女投靠父母人员(六区之间迁入)"];
    [artical addObject:@"需要两个步骤，一是到解甲庄派出所办理准予迁入证明；二是十五个工作日内审批通过后,携带手续到解甲庄派出所落户"];
    
    [articalTitle addObject:@"子女投靠父母人员(莱山区内迁入)"];
    [artical addObject:@"把子女户口从莱山区其他派出所迁至解甲庄派出所或解甲庄街道内迁移，准备好手续后，只需到解甲庄派出所一步便可完成"];

}

- (void)initVehicle{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"办理新车注册业务"];
    [artical addObject:@"1、机动车交通事故责任强制保险凭证第三联公安交管部门留存联；2、车辆购置税的完税证明或者免税凭证副联原件；"];
    
    [articalTitle addObject:@"办理机动车转移登记业务"];
    [artical addObject:@"1、买方车主身份证原件及复印件；2、辖区内办理的二手机动车交易发票；3、在“烟台网上车管所”选定自己编好的机动车号牌号码；"];
    
    [articalTitle addObject:@"机动车补领业务"];
    [artical addObject:@"1.需要自带机动车车主身份证原件及复印件；2.查验大厅查验机动车并领取机动车照片；"];
    
    [articalTitle addObject:@"机动车抵押、解押业务"];
    [artical addObject:@"1、需要自带车主身份证原件和复印件、自带抵押权人的身份证原件和复印件；2、有效的抵押合同；"];
    
    [articalTitle addObject:@"变更业务"];
    [artical addObject:@"1、需要自带车主身份证原件和复印件；2、车辆行驶证；3、车辆登记证书；"];
 
}

- (void)initDrivingLicence{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"驾驶证办理业务"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"办理期满换证业务"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"办理补证业务"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"办理恢复驾驶资格业务"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"办理驾驶人审验业务"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"办理满分学习业务"];
    [artical addObject:@""];
    
}

- (void)initTable{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"涉外办事流程图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"境外人员护照报失登记表"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"外国人补发证件证明表"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"外国人购租房责任保证书"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"外国人住宿登记表"];
    [artical addObject:@""];
}

- (void)initMaps{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"瀛洲派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"望海派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"莱山派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"盛泉派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"初家派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"滨海派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"解甲庄派出所至莱山分局地图"];
    [artical addObject:@""];
    
    [articalTitle addObject:@"院格庄派出所至莱山分局地图"];
    [artical addObject:@""];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [articalTitle count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"secondChapterCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1){
        UIView *myView = [[cell.contentView subviews] objectAtIndex:0];
        myView.layer.shadowOffset = CGSizeMake(0, 1);
        //设置view背影透明度
        myView.layer.shadowOpacity = 0.8;
        myView.layer.shadowPath = [UIBezierPath bezierPathWithRect:myView.bounds].CGPath;
        
    }
    [[[cell.contentView subviews] lastObject]  setText:[articalTitle objectAtIndex:indexPath.item]];
    return cell;
}

- (void)setNavigateBarTitle:(NSString *)title{
    [self.navigationItem setTitle:title];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"goToContent" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"返回"
                                   style:UIBarButtonItemStyleBordered
                                   target:nil
                                   action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    [segue.destinationViewController setNavigateBarTitle:self.navigationItem.title];
    NSIndexPath *number = sender;
    [segue.destinationViewController setArticalTitle:[articalTitle  objectAtIndex:number.item]];
    //NSLog(@"%@",[articalTitle  objectAtIndex:number.item]);
}

@end
