//
//  PMBContentViewController.m
//  PoliceMessageBoard
//
//  Created by jimzhai on 14-3-23.
//  Copyright (c) 2014年 zhaishuai. All rights reserved.
//

#import "PMBContentViewController.h"

@interface PMBContentViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *web;
@end

@implementation PMBContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    NSString *filePath=[[NSBundle mainBundle] pathForResource:self.articalTitle ofType:@"html"];
//    [self.web loadData:[NSData dataWithContentsOfFile:filePath] MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:nil];
    self.web.delegate = self;
    [self.web loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:self.articalTitle ofType:@"html"]isDirectory:NO]]];
    NSFileManager* fm=[NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [paths objectAtIndex:0];
    NSArray *files = [fm subpathsAtPath: docPath ];
    for (NSString *title in files) {
        NSLog(@"%@",title);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNavigateBarTitle:(NSString *)title{
    [self.navigationItem setTitle:title];
}

- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
    if ([[[request URL] scheme] isEqual:@"http"] &&
        [[[request URL] pathExtension] isEqualToString:@"doc"]){
        
        ////////
        
        NSString *filename = [[request URL] lastPathComponent];
        NSLog(@"Filename: %@", filename);
        // Get the path to the App's Documents directory
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *docPath = [paths objectAtIndex:0];
        // Combine the filename and the path to the documents dir into the full path
        NSString *pathToDownloadTo = [NSString stringWithFormat:@"%@/%@", docPath, filename];
        // Load the file from the remote server
        NSData *tmp = [NSData dataWithContentsOfURL:[request URL]];
        if (tmp != nil) {
            NSError *error = nil;
            // Write the contents of our tmp object into a file
            [tmp writeToFile:pathToDownloadTo options:NSDataWritingAtomic error:&error];
            if (error != nil) {
                NSLog(@"Failed to save the file: %@", [error description]);
            } else {
                // Display an UIAlertView that shows the users we saved the file :)
                UIAlertView *filenameAlert = [[UIAlertView alloc] initWithTitle:@"File saved" message:[NSString stringWithFormat:@"The file %@ has been saved.", filename] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [filenameAlert show];
            }
            
        }else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning"
                                                            message:@"File could not be loaded"
                                                           delegate:nil
                                                  cancelButtonTitle:@"Okay"
                                                  otherButtonTitles:nil];
            [alert show];
            // File could notbe loaded -> handle errors
        }
        
        ////////
        //NSLog(@"NO");
        return NO;  //-- no need to follow the link
    }else{
    //NSLog(@"YES");
    return YES; //-- otherwise, follow the link
    }

}

@end
