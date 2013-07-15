//
//  SBViewController.h
//  CustomSegmentedButton
//
//  Created by Pradeep Rajkumar on 15/07/13.
//  Copyright (c) 2013 Pradeep Rajkumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBSegmentedControl.h"

@interface SBViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlButton;

@property (weak, nonatomic) IBOutlet UILabel *segmentStateLabel;

- (IBAction)segmentButtonChanged:(id)sender;

@end