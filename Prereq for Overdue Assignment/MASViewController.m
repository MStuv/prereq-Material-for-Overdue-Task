//
//  MASViewController.m
//  Prereq for Overdue Assignment
//
//  Created by Mark Stuver on 11/10/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import "MASViewController.h"

@interface MASViewController ()

@end

@implementation MASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // The USER_NAME & USER_PASSWORD are define statements that were created in the project's PCH File. The PCH File is a precompiler file that will give all created files access to the declared item in the PCH file.
    // *** The PCH file is a precompile file so before any of the additions are used, the project needs to be "cleaned" in order to be aware of the added commands. (Clean HotKey = Command-Shift K)
    
    //NSLog(@"%@ %@", USER_NAME, USER_PASSWORD);
    
    
    NSLog(@"%@", self.textView.text);
    
    /// Set the UITextViewDelegate's delegate property to self (this viewController)
    self.textView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TextViewDelegate Methods

/// Using this optional UITextViewDelegate Method, we will dismiss the keyboard from the view when the user hits return
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    /// if the user hits return (making an additional line)
    if ([text isEqualToString:@"\n"]) {
        
        /// resign the keyboard
        [self.textView resignFirstResponder];
        
        /// and return NO (which tells the TextView not to allow anymore text to be added
        return NO;
    }
    
    /// if the user has not hit return, return YES (telling the TextView to allow the user to add text)
    return YES;
    
}

@end
