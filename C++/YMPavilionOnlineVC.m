//
//  YMPavilionOnlineVC.m
//  C++
//
//  Created by 何阳模 on 16/9/22.
//  Copyright © 2016年 何阳模. All rights reserved.
//

#import "YMPavilionOnlineVC.h"

@interface YMPavilionOnlineVC ()
@property (strong, nonatomic) UICollectionView *mainCollectionView;
@end

@implementation YMPavilionOnlineVC
#pragma mark - setter/getter
- (UICollectionView *)mainCollectionView
{
    if (!_mainCollectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        _mainCollectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
    }
    return _mainCollectionView;
}

#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.mainCollectionView];
    [self.mainCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.and.bottom.and.left.and.right.mas_equalTo (0);
        make.edges .mas_equalTo (UIEdgeInsetsZero);
//        make.m = UIEdgeInsetsZero;
    }];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
