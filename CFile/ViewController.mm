//
//  ViewController.m
//  CFile
//
//  Created by 何阳模 on 16/9/18.
//  Copyright © 2016年 何阳模. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

void read(char *url) {
    FILE *fp = fopen(url, "rb+");
    FILE *fp1=fopen("/Users/heyangmu/Music/11","wb+");
    FILE *fp2=fopen("/Users/heyangmu/Music/22","wb+");
    unsigned char *temp = (unsigned char*)malloc(4);
    NSMutableData *data = [NSMutableData data];
    while(!feof(fp)){
        fread(temp,1,4,fp);
        [data appendBytes:temp length:4];
        //L
        fwrite(temp,1,2,fp1);
        //R
        fwrite(temp+2,1,2,fp2);
    }
    free(temp);
    printf("%S",data);
    int a = fclose(fp);
    int b = fclose(fp1);
    int c = fclose(fp1);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = [NSString stringWithFormat:@"/Users/heyangmu/Music/Kim Taylor-I Am You.mp3"];
    char *url = (char *)str.UTF8String;
    read(url);
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end

