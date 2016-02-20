//
//  ViewDrawerInterface.h
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

@protocol ViewCellItemInterface;
@class UIView;

@protocol ViewDrawerInterface <NSObject>

- (UIView *)contentView;
- (void)fillView:(UIView *)view withObject:(id<ViewCellItemInterface>)object;

@end
