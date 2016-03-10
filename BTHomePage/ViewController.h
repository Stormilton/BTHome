//
//  ViewController.h
//  BTHomePage
//
//  Created by Storm Hamilton on 3/8/16.
//  Copyright © 2016 codeThatCares@OSU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface ViewController : UIViewController{
    SLComposeViewController *SLComposer;
}

- (IBAction)Facebook:(id)sender;
- (IBAction)Twitter:(id)sender;

- (IBAction)Instagram:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *ImageShift;

- (IBAction)Postbutton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *TextToSend;

@end

