//
//  ChoosePhotoViewController.m
//  AutoLayoutWorkshop
//
//  Created by Steph Sharp on 13/07/2015.
//  Copyright (c) 2015 Odecee. All rights reserved.
//

#import "ChoosePhotoViewController.h"
#import "ProfileViewController.h"

@interface ChoosePhotoViewController ()

@end

@implementation ChoosePhotoViewController

- (IBAction)selectImage:(UITapGestureRecognizer *)sender
{
    [self performSegueWithIdentifier:@"UnwindToProfileWithImage" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"UnwindToProfileWithImage"]) {
        ProfileViewController *pvc = (ProfileViewController *)segue.destinationViewController;
        UIImageView *selectedImageView = (UIImageView *)((UITapGestureRecognizer *)sender).view;
        pvc.profileImageView.image = selectedImageView.image;
    }
}

@end
