//
//  ButtonView.h
//  AVCam
//
//  Created by Elad Gariany on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AVCamViewController;

@interface ButtonView : UIViewController
{
    AVCamViewController* camera;
}

- (IBAction)openCamera:(id)sender;

@end
