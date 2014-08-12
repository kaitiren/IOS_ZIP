//
//  MainViewController.m
//  ZipJSON
//
//  Created by kaitiren on 12-8-27.
//  Copyright (c) 2012年 kaitiren. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
	// Do any additional setup after loading the view.	
	UIButton *btn_zip = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn_zip.frame = CGRectMake(100, 20, 60, 30);
	[btn_zip setTitle:@"压缩" forState:UIControlStateNormal];
	[btn_zip addTarget:self action:@selector(zip) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn_zip];
	
	textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 100, 320, 200)];
	textView.userInteractionEnabled = NO;
	[self.view addSubview:textView];
}

- (void)zip
{
	NSString *string1 = @"{\"UserName\":\"LiYang\",\"Password\":\"123\",\"errorCode\":\"0\"}";
	NSData *data1 = [LFCGzipUtillity gzipData:[string1 dataUsingEncoding:NSUTF8StringEncoding]];
	
	NSData *data2 = [LFCGzipUtillity uncompressZippedData:data1];
	NSString *string2 = [[NSString alloc] initWithData:data2 encoding:NSUTF8StringEncoding];
	textView.text = string2;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
