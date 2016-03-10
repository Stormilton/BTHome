//
//  ViewController.m
//  BTHomePage
//
//  Created by Storm Hamilton on 3/8/16.
//  Copyright © 2016 codeThatCares@OSU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
BOOL Facebookbool = YES;
bool Twitterbool = NO;
bool Instabool = NO;


- (IBAction)Facebook:(id)sender {
    Facebookbool = YES;
    Twitterbool = NO;
    Instabool = NO;
    self.ImageShift.image = [UIImage imageNamed:@"Facebook icon.png"];

}

- (IBAction)Twitter:(id)sender {
    Facebookbool = NO;
    Twitterbool = YES;
    Instabool = NO;
    self.ImageShift.image = [UIImage imageNamed:@"TwitterIcon.jpg"];
}


- (IBAction)Instagram:(id)sender {
    Facebookbool = NO;
    Twitterbool = NO;
    Instabool = YES;
    self.ImageShift.image = [UIImage imageNamed:@"Instagram logo.png"];
}

- (IBAction)Postbutton:(id)sender {
    SLComposer = [[SLComposeViewController alloc] init];
    if (Facebookbool) {
        SLComposer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    }
    else if (Twitterbool){
        SLComposer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    }
    
    [SLComposer setInitialText:[NSString stringWithFormat:@"%@",self.TextToSend.text]];
    [self presentViewController:SLComposer animated:YES completion:NULL];
}
@end
