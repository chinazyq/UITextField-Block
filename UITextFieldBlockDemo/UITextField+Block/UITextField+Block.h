//
//  UITextField+Block.h
//  ZYQNOTE
//
//  Created by UNISK on 16/5/3.
//  Copyright © 2016年 张勇强. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TextFieldBlock)(UITextField* tf);

@interface UITextField (Block)

- (void)addAction:(TextFieldBlock)block;
- (void)addAction:(TextFieldBlock)block forControlEvents:(UIControlEvents)controlEvents;

@end
