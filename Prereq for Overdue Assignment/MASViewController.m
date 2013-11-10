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
    
    // Set the UITextViewDelegate's delegate property to self (this viewController)
    self.textView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TextViewDelegate Methods

// Using this optional UITextViewDelegate Method, we will dismiss the keyboard from the view when the user hits return
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    // if the user hits return (making an additional line)
    if ([text isEqualToString:@"\n"]) {
        
        // resign the keyboard
        [self.textView resignFirstResponder];
        
        // and return NO (which tells the TextView not to allow anymore text to be added
        return NO;
    }
    
    // if the user has not hit return, return YES (telling the TextView to allow the user to add text)
    return YES;
    
}

/// IBAction Method for 'Process Date' Button
- (IBAction)processDateButtonPressed:(UIButton *)sender {
    
    /// Create an instance of NSDate that is equal to the user data that was choosen on the datePicker
    NSDate *date = self.datePicker.date;
    
    /// Create an instance of NSDateFormatter and set the format to the desired format
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    /// Create an instance of NSString that will hold the formatted date of the NSDate value from the datePicker
    NSString *stringFromDate = [formatter stringFromDate:date];
    
    /// Logging the formatted date with the value the user choose
    NSLog(@"%@", stringFromDate);
    
    /// Logging the current date. This NSDate method 'date' gives the current date and time
    NSLog(@"%@", [NSDate date]);
    
    /// Creating an int equal to the value returned from the NSDate method 'timeIntervalSince1970'. This is using the NSDate object that the user choose from the datePicker.
    /// This NSDate method 'timeIntervalSince1970' gives an int in seconds from 12:00am 1/1/1970 to the value of the NSDate instance that the method is called on.
    int timeInterval = [date timeIntervalSince1970];
    
    /// Logging the value of the int variable declared above. Number of seconds from 12:00am 1/1/1970 to the date and time the user entered in the datePicker
    NSLog(@"%i", timeInterval);
    
    
}
@end
