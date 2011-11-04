//
//  ViewController.m
//  BasicDisplay
//
//  Created by Grayson Smith on 11/4/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize containerView;
@synthesize toolbar;
@synthesize photosButton;
@synthesize popoverController;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    images = [[NSMutableArray alloc] init];

}

- (void)viewDidUnload
{
    containerView = nil;
    toolbar = nil;
    [self setContainerView:nil];
    [self setToolbar:nil];
    [self setPhotosButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

-(IBAction)choosePhotos:(id)sender
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.delegate = self;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:imagePickerController];
    popover.contentViewController = imagePickerController;
    [popover presentPopoverFromBarButtonItem:photosButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    self.popoverController = popover;
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{       
    imageView = [[UIImageView alloc] initWithImage:image];
    
    [containerView addSubview:imageView];
    
    [popoverController dismissPopoverAnimated:YES];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [popoverController dismissPopoverAnimated:YES];
}

@end
