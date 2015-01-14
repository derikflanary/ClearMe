//
//  TextViewController.m
//  ClearMe
//
//  Created by Derik Flanary on 1/13/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController () <UITextFieldDelegate>

@end

@implementation TextViewController
- (IBAction)buttonPressed:(id)sender {
    self.textField.text = nil;
    
}



- (void)viewDidLoad {
    self.textField.delegate = self;
    [super viewDidLoad];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePushed)];
    self.navigationItem.rightBarButtonItem = doneButton;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    if ([string  isEqual: @"t"]||[string isEqual:@"T"]){
         return NO;
    }else {
        return YES;
    }
}
    
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;{
        return YES;
    }
- (void)donePushed{
    [self.textField resignFirstResponder];
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
