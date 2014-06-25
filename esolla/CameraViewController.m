//
//  CameraViewController.m
//  esolla
//
//  Created by tatsuaki watanabe on 2014/06/25.
//  Copyright (c) 2014年 tatsuaki watanabe. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

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
    
    UIImagePickerController *pic;
    pic = [[UIImagePickerController alloc]init];
    pic.delegate = (id)self;
    pic.sourceType = UIImagePickerControllerSourceTypeCamera;
    pic.allowsEditing = TRUE;
    
    [self presentViewController:pic animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
