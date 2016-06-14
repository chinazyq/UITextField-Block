//
//  UITextField+Block.m
//  ZYQNOTE
//
//  Created by UNISK on 16/5/3.
//  Copyright © 2016年 张勇强. All rights reserved.
//

#import "UITextField+Block.h"
#import <objc/runtime.h>

@implementation UITextField (Block)
static char tfActionTag;

- (void)addAction:(TextFieldBlock)block
{
    objc_setAssociatedObject(self, &tfActionTag, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventEditingChanged];
}

- (void)addAction:(TextFieldBlock)block forControlEvents:(UIControlEvents)controlEvents
{
    objc_setAssociatedObject(self, &tfActionTag, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(action:) forControlEvents:controlEvents];
}

- (void)action:(id)sender
{
    TextFieldBlock blockAction = (TextFieldBlock)objc_getAssociatedObject(self, &tfActionTag);
    if (blockAction)
    {
        blockAction(self);
    }
}

@end
