//
//  AAAA.m
//  C++
//
//  Created by 何阳模 on 2016/10/13.
//  Copyright © 2016年 何阳模. All rights reserved.
//

#import "AAAA.h"

@implementation AAAA

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.videoTitle = [UILabel new];
        self.videoTitle.lineBreakMode = NSLineBreakByTruncatingTail;
        [self addSubview:self.videoTitle];
        [self.videoTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.top.mas_equalTo(8);
            make.bottom.mas_equalTo(-8);
        }];
        
        // 评分
        self.scoreLB = [UILabel new];
        [self addSubview:self.scoreLB];
        
        self.scoreLB.font = [UIFont systemFontOfSize:15.0f];
        //    self.scoreLB.textColor = [UIColor colorFromHexString:@"EAEAEA"];
        
        [self.scoreLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.videoTitle.mas_right).offset(6);
            make.top.equalTo(self.videoTitle.mas_top).offset(6);
            make.baseline.equalTo(self.videoTitle.mas_baseline);
            make.right.greaterThanOrEqualTo(self.mas_right).offset(-2);
            make.width.mas_equalTo(30);
        }];

    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
