//
//  TOPViewController.m
//  esolla
//
//  Created by tatsuaki watanabe on 2014/06/25.
//  Copyright (c) 2014年 tatsuaki watanabe. All rights reserved.
//

#import "TOPViewController.h"

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
    titleLabel.text = @"esolla app";
    titleLabel.numberOfLines = 2;
    titleLabel.font = [UIFont systemFontOfSize:40];
    titleLabel.frame = CGRectMake(0, 50, 320, 100);
    titleLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    //start button create
    UIImageView *startBtn = [[UIImageView alloc]init];
    startBtn.backgroundColor = [UIColor colorWithRed:1.0 green:0.5 blue:0.2 alpha:1];
    startBtn.frame = CGRectMake(110, 400, 100, 50);
    [self.view addSubview:startBtn];
    startBtn.clipsToBounds = YES;
    startBtn.layer.cornerRadius = 20;
    UILabel *btnLabel = [[UILabel alloc]init];
    btnLabel.text = @"Camera";
    btnLabel.font = [UIFont systemFontOfSize:20];
    btnLabel.frame = CGRectMake(0, 0, 100, 50);
    btnLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    btnLabel.textAlignment = NSTextAlignmentCenter;
    [startBtn addSubview:btnLabel];
    startBtn.userInteractionEnabled = YES;
    startBtn.tag = 100;
    UITapGestureRecognizer *startBtnGesture = [[UITapGestureRecognizer alloc]initWithTarget:
                                               self action:@selector(tapAction:)];
    [startBtn addGestureRecognizer:startBtnGesture];

    
}

- (void)tapAction:(UIGestureRecognizer*)gesture
{
    //self.view.backgroundColor = [UIColor blackColor];
    // 1.何をおしたか判別　=> tagを使う
    if(gesture.view.tag == 100){
        UIImagePickerController *pic;
        pic = [[UIImagePickerController alloc]init];
        pic.delegate = (id)self;
        pic.sourceType = UIImagePickerControllerSourceTypeCamera;
        pic.allowsEditing = TRUE;
        
        UIImageView *img = [[UIImageView alloc]init];
        img.image = [UIImage imageNamed:@"01.png"];
        img.frame = CGRectMake(100, 250, 120, 170);
        
        img.userInteractionEnabled = YES;
        img.tag = 200;
        
        pic.cameraOverlayView = img;
        [self presentViewController:pic animated:YES completion:nil];
    } else {
        //NSLog(gesture);
        //img.frame = CGRectMake(100, 250, 120, 170);
    }
    return;
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

    
    /*
     UIImagePickerController *picker = [[UIImagePickerController alloc] init];
     
     if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
     {
     [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
     UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image.png"]];
     picker.cameraOverlayView = imageView;
     }
     
     [self presentViewController:picker animated:YES completion:nil];
     }

     */
}


@end
