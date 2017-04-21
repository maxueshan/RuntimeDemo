//
//  CustomLayout.m
//  collectionV
//
//  Created by xueshan on 17/4/21.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "CustomLayout.h"

@interface CustomLayout ()

@property(nonatomic,strong)NSMutableArray *layoutInfoArr;
@property(nonatomic,assign)CGSize *contentSize;

@property(nonatomic,assign)float *lineSpacing;
@property(nonatomic,assign)float *interitemSpacing;
//@property(nonatomic,assign)float *lineSpacing;

- (CGFloat)getFloat;

//- (void)setdaaaaa;


@end

@implementation CustomLayout
- (CGFloat)getFloat{
    return 1;
}
- (void)setdaaaaa{
    
}

- (void)prepareLayout{
    [super prepareLayout];
    
    
    CGFloat f = self.getFloat;
    

}





@end
