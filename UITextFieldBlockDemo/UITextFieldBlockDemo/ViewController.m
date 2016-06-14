//
//  ViewController.m
//  UITextFieldBlockDemo
//
//  Created by UNISK on 16/6/14.
//  Copyright © 2016年 张勇强. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Block.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.zTextField addAction:^(UITextField *tf) {
        self.zLabel.text = tf.text;
    } forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
