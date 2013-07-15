//
//  SBViewController.m
//  CustomSegmentedButton
//
//  Created by Pradeep Rajkumar on 15/07/13.
//  Copyright (c) 2013 Pradeep Rajkumar. All rights reserved.
//

#import "SBViewController.h"

@interface SBViewController ()

@end

@implementation SBViewController
{
	SBSegmentedControl *sbSegmentedControl;
	NSInteger previousSelectedIndex;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	sbSegmentedControl = [[SBSegmentedControl alloc] initWithFrame:CGRectMake(50, 190, 400, 50)];
	[sbSegmentedControl insertSegmentWithTitle:@"0" atIndex:0 animated:YES];
	[sbSegmentedControl insertSegmentWithTitle:@"1" atIndex:1 animated:YES];
	[sbSegmentedControl insertSegmentWithTitle:@"2" atIndex:2 animated:YES];
	[sbSegmentedControl insertSegmentWithTitle:@"3" atIndex:3 animated:YES];
	[sbSegmentedControl insertSegmentWithTitle:@"4" atIndex:4 animated:YES];
	sbSegmentedControl.selectedSegmentIndex = 0;
	[sbSegmentedControl addTarget:self action:@selector(sbSegmentedControlValueChanged:) forControlEvents:UIControlEventValueChanged];
	[self.view addSubview:sbSegmentedControl];
}


- (void) sbSegmentedControlValueChanged:(id)sender
{
	if (((SBSegmentedControl *)sender).selectedSegmentIndex == previousSelectedIndex)
	{
		 ((SBSegmentedControl *)sender).selectedSegmentIndex =  UISegmentedControlNoSegment;		
	}
	previousSelectedIndex = ((SBSegmentedControl *)sender).selectedSegmentIndex;
	[self.segmentStateLabel setText:[NSString stringWithFormat:@"Selected Value: %d", previousSelectedIndex]];
}

- (IBAction)segmentButtonChanged:(id)sender
{
	if ([sender selectedIndex] == 0)
	{
		[self.segmentStateLabel setText:@"Selected Value: First"];
	}
	else
	{
		[self.segmentStateLabel setText:@"Selected Value: Second"];
	}
}
@end