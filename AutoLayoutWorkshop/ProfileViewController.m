//
//  ProfileViewController.m
//  AutoLayoutWorkshop
//
//  Created by Steph Sharp on 4/07/2015.
//  Copyright (c) 2015 Odecee. All rights reserved.
//

#import "ProfileViewController.h"

@implementation ProfileViewController

- (IBAction)editPhoto:(UIButton *)sender
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Edit Profile Photo"
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];

    UIAlertAction *takePhotoAction = [UIAlertAction actionWithTitle:@"Take new photo"
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction *action) {
                                                                [self performSegueWithIdentifier:@"TakeNewPhoto" sender:self];
                                                            }];

    UIAlertAction *recentPhotoAction = [UIAlertAction actionWithTitle:@"Choose recent photo"
                                                                style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction *action) {
                                                                  [self performSegueWithIdentifier:@"ChooseRecentPhoto" sender:self];
                                                              }];

    [alertController addAction:cancelAction];
    [alertController addAction:recentPhotoAction];
    [alertController addAction:takePhotoAction];

    alertController.modalPresentationStyle = UIModalPresentationPopover;
    UIPopoverPresentationController *popover = alertController.popoverPresentationController;
    popover.barButtonItem = (UIBarButtonItem *)sender;

    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)unwindToProfile:(UIStoryboardSegue *)sender
{
    
}

- (IBAction)sendComment:(id)sender
{
    [self endEditing:YES];
}

- (BOOL)endEditing:(BOOL)force
{
    return [self.view endEditing:YES];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self endEditing:YES];
    return YES;
}

@end
