//
//  FilterControl.h
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FilterControlDelegate <NSObject>

- (void)selectedFilterIndex:(NSInteger)index;
@end

@interface FilterControl : UIControl

-(id)initWithFrame:(CGRect) frame;

@property (nonatomic, readonly) NSInteger selectedIndex;
@property (nonatomic, weak)id <FilterControlDelegate> delegate;

@end
