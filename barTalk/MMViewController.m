//
//  MMViewController.m
//  barTalk
//
//  Created by Dexter Teng on 2/6/13.
//  Copyright (c) 2013 Dexter Teng. All rights reserved.
//

#import "MMViewController.h"
#import "MMUITextView.h" // WHY IMPORT HERE NOT IN MM APP DELEGATE

@interface MMViewController ()
{
    MMUITextView *awesomeTextStuff;
}
@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Change background color to black
    [[self view] setBackgroundColor:[UIColor blackColor]];
    
    // Initialize our awesome text field
    awesomeTextStuff = [[MMUITextView alloc] initWithFrame:CGRectMake(0, 100, 300, 350)];
    
    // links 
    [awesomeTextStuff setDelegate:self];
    
    //Add text field to our field
    [[self view] addSubview:awesomeTextStuff];
}
/*
- (BOOL)textViewShouldReturn:(UITextView *)textView
{
    [textView resignFirstResponder];
    return YES;
}*/

- (BOOL) textView: (UITextView*) textView
         shouldChangeTextInRange: (NSRange) range
                 replacementText: (NSString*) text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
