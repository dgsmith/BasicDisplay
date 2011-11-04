//
//  ViewController.h
//  BasicDisplay
//
//  Created by Grayson Smith on 11/4/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverControllerDelegate>
{

    UIView *containerView;
    UIToolbar *toolbar;
    UIImageView *imageView;
    
    NSMutableArray *images;
    NSURL *url;
    
}

@property (nonatomic, retain) UIPopoverController *popoverController;
@property (nonatomic, retain) IBOutlet UIView *containerView;
@property (nonatomic, retain) IBOutlet UIView *toolbar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *photosButton;

-(IBAction)choosePhotos:(id)sender;

@end
