//
//  ViewController.m
//  11
//
//  Created by 何阳模 on 16/9/23.
//  Copyright © 2016年 何阳模. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSString *sstr;
@property (copy, nonatomic) NSString *cstr;
@end

@implementation ViewController

- (void)tes
{
    NSString *str = [NSString stringWithFormat:@"a"];
    self.sstr = str;
    self.cstr = str;
    NSLog(@"%p",str);
    NSLog(@"%p",self.sstr);
    NSLog(@"%p",self.cstr);
    

    
    
    NSMutableString *mstr = [NSMutableString stringWithString:@"douyu"];
    self.sstr = mstr;
    self.cstr = mstr;
    NSLog(@"%p",mstr);
    NSLog(@"%p",self.sstr);
    NSLog(@"%p",self.cstr);
    NSLog(@"------");

    [mstr appendString:@"TV"];
    NSLog(@"%@",self.sstr);
    NSLog(@"%@",self.cstr);
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self tes];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
