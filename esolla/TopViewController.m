//
//  TOPViewController.m
//  esolla
//
//  Created by tatsuaki watanabe on 2014/06/25.
//  Copyright (c) 2014年 tatsuaki watanabe. All rights reserved.
//

#import "TOPViewController.h"
#import "CameraViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

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

    //タイトル追加
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.text = @"touchでcamera start";
    titleLabel.numberOfLines = 2;
    titleLabel.font = [UIFont systemFontOfSize:40];
    titleLabel.frame = CGRectMake(0, 50, 320, 100);
    titleLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    /*
    CameraViewController *cameraViewCtr = [[CameraViewController alloc]init];
    [self presentViewController:cameraViewCtr animated:NO completion:nil];*/
    UIImagePickerController *pic;
    pic = [[UIImagePickerController alloc]init];
    pic.delegate = (id)self;
    pic.sourceType = UIImagePickerControllerSourceTypeCamera;
    pic.allowsEditing = TRUE;
    
    [self presentViewController:pic animated:YES completion:nil];
}


@end
