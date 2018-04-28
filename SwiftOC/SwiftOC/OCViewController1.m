//
//  OCViewController1.m
//  SwiftOC
//
//  Created by apple on 28/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "OCViewController1.h"


// 命名 一定是 工程名-Swift.h
#import "SwiftOC-Swift.h"

@interface OCViewController1 ()

@end

@implementation OCViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
- (void)btnClick {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewController1 *swiftVC = [[ViewController1 alloc] init];
    [self presentViewController:swiftVC animated:YES completion:nil];
    
}

@end
