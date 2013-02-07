//
//  MMUITextField.m
//  barTalk
//
//  Created by Dexter Teng on 2/6/13.
//  Copyright (c) 2013 Dexter Teng. All rights reserved.
//

#import "MMUITextView.h"

@implementation MMUITextView
- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        //[self setTextColor:[UIColor whiteColor]];
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor blackColor];
        
        // [self setBorderStyle:UITextBorderStyleNone];
        
        
        // [self setFont:[UIFont systemFontOfSize:42]];
        self.font = [UIFont systemFontOfSize:60];
        //[self setBounds:[CGRectMake(0, 50, 50, 0)]] ;
        
        // [self setPlaceholder:@"Please Text Me UP!"];
        //[self sizeToFit];
        
        // [self setReturnKeyType:UIReturnKeyDone];
        self.returnKeyType = UIReturnKeyDone;
        
        
        
        [self setAttributedText:[[NSAttributedString alloc] initWithString:@"Hello"]];
        
        
        return self;
    }
    return nil;
    
    
}
@end
