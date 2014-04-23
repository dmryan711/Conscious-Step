//
//  CSStartViewController.m
//  Conscious Step
//
//  Created by Devon Ryan on 2/25/14.
//  Copyright (c) 2014 Devon Ryan. All rights reserved.
//


#import <Parse/Parse.h>
#import "CSStartViewController.h"
#import "FUIButton.h"
#import <QuartzCore/QuartzCore.h>

@interface CSStartViewController () <UIGestureRecognizerDelegate>

@end

@implementation CSStartViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    /*PFObject *test = [PFObject objectWithClassName:@"Test"];
    [test setObject:@"Balls" forKey:@"Rahul"];
    [test incrementKey:@"Count"];
    [test save];*/
    
    //self.view.backgroundColor = [UIColor blueColor];
    
    FUIButton *button = [FUIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 500, 30, 50);
    [button setTitle:@"Left" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    button.alpha = .5;
    button.tag = 1;
    [button.layer setCornerRadius:0.0f];
    [button.layer setShadowOffset:CGSizeMake(2, 2)];
    [button.layer setShadowColor:[UIColor blackColor].CGColor];
    [button.layer setShadowOpacity:0.8];
    [button addTarget:self action:@selector(leftPressed:) forControlEvents:UIControlEventTouchUpInside];
    self.leftButton = button;
    [self.view addSubview:button];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)leftPressed:(UIButton *)sender {
     NSLog(@"Left Pressed Called");
    UIButton *button = sender;
    switch (button.tag) {
        case 0: {
             NSLog(@"Move Back Called");
            self.leftButton.tag = 1;
            [_delegate movePanelToOriginalPosition];
            break;
        }
            
        case 1: {
             NSLog(@"Move Right Called");
            [_delegate movePanelRight];
            self.leftButton.tag = 0;
            break;
        }
            
        default:
             NSLog(@"Nothing Called");
            break;
    }
}
- (IBAction)rightPressed:(id)sender {
     NSLog(@"Right Pressed Called");
    UIButton *button = sender;
    switch (button.tag) {
        case 0: {
            NSLog(@"Move Back Called");
            [_delegate movePanelToOriginalPosition];
            break;
        }
            
        case 1: {
            NSLog(@"Move Left Called");
            [_delegate movePanelLeft];
            break;
        }
            
        default:
            NSLog(@"Nothing Called");
            break;
    }
}

@end
