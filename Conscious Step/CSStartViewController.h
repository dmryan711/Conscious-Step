//
//  CSStartViewController.h
//  Conscious Step
//
//  Created by Devon Ryan on 2/25/14.
//  Copyright (c) 2014 Devon Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CSStartViewControllerDelegate <NSObject>

@optional
- (void)movePanelLeft;
- (void)movePanelRight;

@required
- (void)movePanelToOriginalPosition;

@end

@interface CSStartViewController : UIViewController


@property (nonatomic, assign) id<CSStartViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;


@end
