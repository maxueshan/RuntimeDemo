//
//  ViewController.m
//  collectionV
//
//  Created by xueshan on 17/4/21.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "CustomLayout.h"

#define Wid self.view.frame.size.width
#define Hei self.view.frame.size.height

static const NSString *cusCell = @"cusCell";

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property(nonatomic,strong)NSMutableArray *dataArr;
@property(nonatomic,strong)UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];

    [self initDAtA];
    [self initCollectionView];
    
}
- (void)initDAtA{
    
//    cusCell = @"ddd";
}
- (void)initCollectionView{
    UICollectionViewFlowLayout  *fl = [[UICollectionViewFlowLayout alloc]init];
    fl.itemSize = CGSizeMake((Wid-4)/3, 150);
    fl.minimumLineSpacing = 1;
    fl.minimumInteritemSpacing = 1;
    
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, Wid, Hei) collectionViewLayout:fl];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.collectionView];
    
    
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellWithReuseIdentifier:@"123"];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
//    return 1;
    return 2;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArr.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];

        float r = (arc4random()%255)/255.0;
        float g = (arc4random()%255)/255.0;;
        float b = (arc4random()%255)/255.0;;

        cell.contentView.backgroundColor = [UIColor colorWithRed:r green:g  blue:b alpha:1];
        
        
        return cell;
    }else{
        
        CustomCell *cell = (CustomCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"123" forIndexPath:indexPath];
        
        
        cell.contentView.backgroundColor = [UIColor redColor];

        
        return cell;

    }


    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"--点击:%ld",indexPath.item);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 1, 0, 1);
}






































- (NSMutableArray *)dataArr{
    if (!_dataArr) {
        NSArray *arr = @[@"转账",@"充值",@"信用卡",@"转账",@"充值",@"信用卡",@"转账",@"充值",@"信用卡",@"转账",@"充值",@"信用卡",@"转账"];
        _dataArr = [NSMutableArray arrayWithArray:arr];
        
        
    }
    return _dataArr;
}

@end
