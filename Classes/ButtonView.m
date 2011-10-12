//
//  ButtonView.m
//  AVCam
//
//  Created by Elad Gariany on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ButtonView.h"
#import "AVCamViewController.h"

@implementation ButtonView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"\n\n--- BUTTON-VIEW viewDidLoad ---\n\n");
    NSLog(@"%@, retain=%d",camera,[camera retainCount]);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)openCamera:(id)sender {
    
    NSLog(@"\n\n--- OPENING CAMERA ---\n\n");
    
    camera = [[AVCamViewController alloc] init];
    [self presentModalViewController:camera animated:YES];
}

@end
