//
//  PMBChapterTableViewController.m
//  PoliceMessageBoard
//
//  Created by jimzhai on 14-3-23.
//  Copyright (c) 2014年 zhaishuai. All rights reserved.
//

#import "PMBChapterTableViewController.h"
#import "PMBSecondChapterTableViewController.h"
#import "PMBContentViewController.h"
@interface PMBChapterTableViewController (){
    NSMutableArray *articalTitle;
    NSMutableArray *artical;
    NSMutableArray *goToSecondChapter;
}
@end

@implementation PMBChapterTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)initArticalTitleBooklet{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    goToSecondChapter = [[NSMutableArray alloc] init];
    
//    [articalTitle addObject:@"夫妻投靠人员(烟台六区以外)"];
//    [artical addObject:@"把户口从他处（烟台六区以外）迁至家中，需要三个步骤，一是到解甲庄派出所办理准迁证"];
//    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
    
//    [articalTitle addObject:@"夫妻投靠人员(六区之间迁入)"];
//    [artical addObject:@"把户口从他处（莱山区以外其他五区）迁至家中，需要两个步骤，一是到解甲庄派出所办理准予迁入证明"];
    
    
//    [articalTitle addObject:@"夫妻投靠人员(莱山区内迁入)"];
//    [artical addObject:@"把夫妻一方户口从莱山区其他派出所迁至解甲庄派出所或解甲庄街道内迁移"];
    
    [articalTitle addObject:@"夫妻投靠"];
    [artical addObject:@"夫妻投靠人员(烟台六区以外)、夫妻投靠人员(六区之间迁入)、夫妻投靠人员(莱山区内迁入)"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
//    [articalTitle addObject:@"父母投靠子女人员(烟台六区以外)"];
//    [artical addObject:@"把户口从他处（烟台六区以外）迁至家中，需要三个步骤，一是到解甲庄派出所办理准迁证"];
//    
//    [articalTitle addObject:@"父母投靠子女人员(六区之间迁入)"];
//    [artical addObject:@"把户口从他处（莱山区以外其他五区）迁至家中，需要两个步骤，一是到解甲庄派出所办理准予迁入证明"];
//    
//    [articalTitle addObject:@"父母投靠子女人员(莱山区内迁入)"];
//    [artical addObject:@"把夫妻一方户口从莱山区其他派出所迁至解甲庄派出所或解甲庄街道内迁移，准备好手续后"];
    
    [articalTitle addObject:@"父母投靠"];
    [artical addObject:@"父母投靠子女人员(烟台六区以外)、父母投靠子女人员(六区之间迁入)、父母投靠子女人员(莱山区内迁入)"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
//    [articalTitle addObject:@"子女投靠父母人员(烟台六区以外迁入)"];
//    [artical addObject:@"子女投靠父母中的子女是指未成年子女或成年未婚子女，不含离婚或丧偶者，且其父（母）户口在我区且有合法固定住所"];
//    
//    [articalTitle addObject:@"子女投靠父母人员(六区之间迁入)"];
//    [artical addObject:@"需要两个步骤，一是到解甲庄派出所办理准予迁入证明；二是十五个工作日内审批通过后,携带手续到解甲庄派出所落户"];
//    
//    [articalTitle addObject:@"子女投靠父母人员(莱山区内迁入)"];
//    [artical addObject:@"把子女户口从莱山区其他派出所迁至解甲庄派出所或解甲庄街道内迁移，准备好手续后，只需到解甲庄派出所一步便可完成"];
    
    [articalTitle addObject:@"子女投靠"];
    [artical addObject:@"子女投靠父母人员(烟台六区以外迁入)、子女投靠父母人员(六区之间迁入)、子女投靠父母人员(莱山区内迁入)"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
    [articalTitle addObject:@"新生婴儿落户须知"];
    [artical addObject:@"新生婴儿出生落户实行随父随母自愿的政策，落户需提供以下手续材料："];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"大中专毕业生落户须知"];
    [artical addObject:@"所需手续材料：１、《户口迁移证》；2、毕业生就业报到证或派遣证、推荐书复印件；"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"退伍,转业落户须知"];
    [artical addObject:@"所需手续材料：退伍、转业军人安置办公室出具的退伍军人户口介绍信，注明身份证号码；"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"户口迁出须知"];
    [artical addObject:@"居民户口在我辖区要迁出人员办理以下手续：对方公安局出具的准予迁入证明（准迁证），本人户口本、身份证"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"分户须知"];
    [artical addObject:@"在同一村（居）委会内的住户，由一户分为数户，派出所可以根据分户人申请经调查核实后予以办理分户，所需手续："];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"死亡注销户口须知"];
    [artical addObject:@"公民死亡，其户主或亲属、抚养人、邻居要在火化前持死者户口簿、身份证"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"身份证办理"];
    [artical addObject:@"为避免不法分子利用您的身份从事违法犯罪行为，当您的身份证不慎丢失时，请尽快由本人到户口所在地派出所补领居民身份证。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"流动人口服务便民指南"];
    [artical addObject:@"热忱的欢迎您来到烟台市莱山区解甲庄派出所辖区经商务工，我们衷心祝愿您工作顺利，万事顺心"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"出租房屋登记办理"];
    [artical addObject:@"您有房子要出租吗？让我们一起了解一下出租房屋要注意哪些问题，做到合法出租"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    
}

- (void)initArticalTitleTrafficLight{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    goToSecondChapter = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"驾驶证"];
    [artical addObject:@"办理初次申领业务流程、办理期满换证业务流程、办理补证业务流程、办理恢复驾驶资格业务流程、办理驾驶人审验业务流程、办理满分学习业务流程"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
    [articalTitle addObject:@"机动车"];
    [artical addObject:@"办理新车注册业务流程、办理机动车转移登记业务流程、机动车补领业务流程、机动车抵押、解押业务流程、变更业务流程"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    

}

- (void)initArticalTitleChuRuJing{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    goToSecondChapter = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"申请因私普通电子护照"];
    [artical addObject:@"公民因前往国外定居、探亲、学习、就业、旅行、从事商务活动等非公务原因出国的，申请因私普通电子护照。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"申请赴港澳地区旅游"];
    [artical addObject:@"因参加国家旅游局指定旅行社组织的团队赴港澳地区旅游的，申请往来港澳通行证及团体旅游L签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"申请赴港澳地区探亲"];
    [artical addObject:@"因探望在香港或者澳门定居、就学或者就业的亲属（亲属指:配偶，父母或者配偶的父母，子女，兄弟姐妹。申请人的配偶、子女可随同申请）"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"申请赴港澳商务洽谈"];
    [artical addObject:@"因受单位派遣赴港澳商务或个体工商户经营者赴港澳商务的，由本人向工作单位所在地的公安机关出入境管理机构申请往来港澳通行证及签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"因私事申请赴港澳地区"];
    [artical addObject:@"因治病、奔丧、诉讼、应试、处理产业、学术交流等特殊事由申请赴香港或者澳门，或者在澳门就学、就业的内地居民申请赴香港，申请往来港澳通行证及签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"申请赴港澳就学,就业,培训"];
    [artical addObject:@"经香港或者澳门有关部门批准在港澳就学、就业、培训人员及其亲属，可由本人向常住户口所在地公安机关出入境管理机构申请往来港澳通行证及逗留签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"申请赴台湾旅游"];
    [artical addObject:@"因参加国家旅游局指定旅行社组织的团队赴台湾地区旅游的，申请往来台湾通行证及团体旅游L签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"申请因私赴台湾"];
    [artical addObject:@"因私事前往台湾探亲、定居、访友、接受和处理财产，处理婚丧及其他因私事务的，申请往来台湾通行证及签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];

    [articalTitle addObject:@"申请应邀赴台湾"];
    [artical addObject:@"应邀前往台湾进行经济、文化、科技、体育、学术等活动或者参加会议、进行两岸事务性商谈、采访（已经国务院台办审核，以下简称应邀前往台湾，发Y类签注），申请往来台湾通行证及签注。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"示范表格"];
    [artical addObject:@"涉外办事流程图、境外人员护照报失情况登记表、外国人丢失出入境证件申请补发证明自述表、外国人购租房治安责任保证书、外国人住宿登记表"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
}

- (void)initArticalTitleYiAnXiFa{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    goToSecondChapter = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"殴打他人案例解析"];
    [artical addObject:@"《治安管理处罚法》第四十三条规定，殴打他人的，或者故意伤害他人身体的，处五日以上十日以下拘留，并处二百元以上五百元以下罚款；"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"故意伤害案例解析"];
    [artical addObject:@" 《中华人民共和国刑法邢法》第二百三十四条　故意伤害他人身体的，处三年以下有期徒刑、拘役或者管制。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"寻衅滋事案例解析"];
    [artical addObject:@"寻衅滋事罪，是指肆意挑衅，随意殴打、骚扰他人或任意损毁、占用公私财物，或者在公共场所起哄闹事。严重破坏社会秩序的行为。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"盗窃罪案例解析"];
    [artical addObject:@"盗窃罪，是指以非法占有为目的，秘密窃取数额较大的公私财物或者多次秘密窃取公私财物的行为。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"赌博案例解析"];
    [artical addObject:@"第三百零三条第一款  以营利为目的，聚众赌博或者以赌博为业，处三年以下有期徒刑、拘役或者管制，并处罚金。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"扰乱单位秩序,选举秩序"];
    [artical addObject:@"第二十三条  有下列行为之一的，处警告或者二百元以下罚款；情节较重的，处五日以上十日以下拘留，可以并处五百元以下罚款；"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    

}

- (void)initArticalTitleFangFanChanShi{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    goToSecondChapter = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"防抢小常识-防抢篇"];
    [artical addObject:@"一、在公路边候车、等人时，要注意保管好随身携带的提包、手机等财物，要特别留意两人共乘一辆摩托车在人群中不停地转圈子的人员，防止遭飞抢。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"防火常识-防火篇"];
    [artical addObject:@"1、教育孩子不玩火，不玩弄电气设备。2、不乱丢烟头，不躺在床上吸烟。3、不乱接乱拉电线，电路熔断器切勿用铜、铁丝代替。4、家中不可存放超过。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"如何防范入室盗窃-防盗篇"];
    [artical addObject:@"发生入室盗窃案件主要集中在管理较混乱的自然村、出租屋和物业管理薄弱、松散、没有物业管理的老住宅区；而在管理较为严格、设施较为完善住宅区发生案件相对较少。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"开学防骗-防骗篇"];
    [artical addObject:@"骗术一：冒充教育局工作人员，称有一项针对贫困学生的助学金，并告知所谓的省教育厅办公室电话，进而谎称称钱已经转入银行并让家长去ATM机操作转账，从而骗取钱财；"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"网络防范小常识"];
    [artical addObject:@"电子商务是当今信息社会蓬勃发展的朝阳产业。网上购物，看得见摸不着，店家累积起的信誉度成为顾客买东西的重要依据。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];


    
}

- (void)initArticalTitleBianMinTieShi{
    articalTitle = [[NSMutableArray alloc] init];
    artical = [[NSMutableArray alloc] init];
    goToSecondChapter = [[NSMutableArray alloc] init];
    
    [articalTitle addObject:@"警民通使用说明"];
    [artical addObject:@"点击莱山公安警民通，打开后我们可以看到警民通的服务内容：户政服务，车管业务，出境指南，以案析法，防范常识，便民贴士。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"各派出所到达分局路线"];
    [artical addObject:@"一、在公路边候车、等人时，要注意保管好随身携带的提包、手机等财物，要特别留意两人共乘一辆摩托车在人群中不停地转圈子的人员，防止遭飞抢。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"各派出所具体地址"];
    [artical addObject:@"一、在公路边候车、等人时，要注意保管好随身携带的提包、手机等财物，要特别留意两人共乘一辆摩托车在人群中不停地转圈子的人员，防止遭飞抢。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    
    [articalTitle addObject:@"路线图"];
    [artical addObject:@"莱山各派出所至莱山公安分局路线图"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:YES]];
    
    [articalTitle addObject:@"各相关单位便民指南"];
    [artical addObject:@"一、在公路边候车、等人时，要注意保管好随身携带的提包、手机等财物，要特别留意两人共乘一辆摩托车在人群中不停地转圈子的人员，防止遭飞抢。"];
    [goToSecondChapter addObject:[NSNumber numberWithBool:NO]];
    

    

    
    
}

- (void)awakeFromNib{
    [super awakeFromNib];
}
- (void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillAppear:animated];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [articalTitle count];
}

- (void)setNavigateBarTitle:(NSString *)title{
    [self.navigationItem setTitle:title];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CharpterCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    UIImageView *myPic = [[[[cell.contentView subviews] objectAtIndex:0] subviews] objectAtIndex:0];
    
    myPic.layer.borderWidth  = 5.0f;
    myPic.layer.borderColor  = [UIColor whiteColor].CGColor;
    myPic.layer.shadowOffset = CGSizeMake(0, 1);
    //设置图片背影透明度
    myPic.layer.shadowOpacity = 0.2;
    myPic.layer.shadowPath = [UIBezierPath bezierPathWithRect:myPic.bounds].CGPath;
    
    UIView *myView = [[cell.contentView subviews] objectAtIndex:0];
    myView.layer.shadowOffset = CGSizeMake(0, 2);
    //设置view背影透明度
    myView.layer.cornerRadius = 4.0f;
    myView.layer.shadowOpacity = 0.8;
    myView.layer.shadowPath = [UIBezierPath bezierPathWithRect:myView.bounds].CGPath;
    
    UILabel *title = [[[[cell.contentView subviews] objectAtIndex:0] subviews] objectAtIndex:1];
    [title setText:[articalTitle  objectAtIndex:indexPath.item]];
    title.adjustsFontSizeToFitWidth=YES;
    UILabel *detials = [[[[cell.contentView subviews] objectAtIndex:0] subviews] objectAtIndex:3];
    [detials setText:[artical objectAtIndex:indexPath.item]];
    [myPic setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",[articalTitle  objectAtIndex:indexPath.item]]]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([[goToSecondChapter objectAtIndex:indexPath.item] boolValue]){
        [self performSegueWithIdentifier:@"goToSecondChapter" sender:[NSNumber numberWithLong:indexPath.item] ];
    }else{
        [self performSegueWithIdentifier:@"secondChapter" sender:[NSNumber numberWithLong:indexPath.item] ];
    }
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"secondChapter"]){
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"返回"
                                   style:UIBarButtonItemStyleBordered
                                   target:nil
                                   action:nil];
        [self.navigationItem setBackBarButtonItem:backButton];
        [segue.destinationViewController setNavigateBarTitle:self.navigationItem.title];
        NSNumber *number = sender;
        [segue.destinationViewController setArticalTitle:[articalTitle  objectAtIndex:number.intValue]];
    }else if([segue.identifier isEqualToString:@"goToSecondChapter"]){
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                       initWithTitle:@"返回"
                                       style:UIBarButtonItemStyleBordered
                                       target:nil
                                       action:nil];
        [self.navigationItem setBackBarButtonItem:backButton];
        NSNumber *number = sender;
        [segue.destinationViewController setNavigateBarTitle:[articalTitle objectAtIndex:number.intValue]];
        if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"父母投靠"]){
            [segue.destinationViewController initParents];
        }else if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"子女投靠"]){
            [segue.destinationViewController initchildren];
        }else if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"夫妻投靠"]){
            [segue.destinationViewController initCouple];
        }else if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"机动车"]){
            [segue.destinationViewController initVehicle];
        }else if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"驾驶证"]){
            [segue.destinationViewController initDrivingLicence];
        }else if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"示范表格"]){
            [segue.destinationViewController initTable];
        }else if([[articalTitle objectAtIndex:number.intValue] isEqualToString:@"路线图"]){
            [segue.destinationViewController initMaps];
        }
        //[segue.destinationViewController setArticalTitle:@"hello"];
    }
    //NSLog(@"%@",[[articalTitle allKeys] objectAtIndex:[[sender indexPath] item]]);
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
