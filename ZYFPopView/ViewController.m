//
//  ViewController.m
//  ZYFPopView
//
//  Created by moxi on 2017/7/28.
//  Copyright © 2017年 zyf. All rights reserved.
//

#import "ViewController.h"
#import "ZYFPopview.h"

@interface ViewController ()

@property (nonatomic, strong)ZYFPopview *popView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    
    self.popView = [[ZYFPopview alloc]initInView:[UIApplication sharedApplication].keyWindow tip:@"你还好吗" images:@[] rows:@[@"拍照",@"修改密码",@"解绑手机号"] doneBlock:^(NSInteger selectIndex) {
        NSLog(@"%ld",selectIndex);

    } cancleBlock:^{
        NSLog(@"取消");

    }];
    
    
    [self.popView showPopView];
}

@end
