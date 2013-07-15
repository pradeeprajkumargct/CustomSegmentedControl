//
//  SBSegmentedControl.m
//  CustomSegmentedButton
//
//  Created by Pradeep Rajkumar on 15/07/13.
//  Copyright (c) 2013 Pradeep Rajkumar. All rights reserved.
//

#import "SBSegmentedControl.h"

@implementation SBSegmentedControl

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// this sends a value changed event even if we reselect the currently selected segment
//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSInteger current = self.selectedSegmentIndex;
    [super touchesBegan:touches withEvent:event];
    if (current == self.selectedSegmentIndex)
	{
        [self sendActionsForControlEvents:UIControlEventValueChanged];
    }
}

@end