//
//  MASViewController.h
//  Prereq for Overdue Assignment
//
//  Created by Mark Stuver on 11/10/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

/// Conform to UITextViewDelegate Protocol
@interface MASViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *textView;
@end
