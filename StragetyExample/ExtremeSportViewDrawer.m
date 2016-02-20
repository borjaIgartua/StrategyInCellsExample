//
//  ExtremeSportViewDrawer.m
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "ExtremeSportViewDrawer.h"
#import "ViewCellItemInterface.h"
#import "ExtremeView.h"

@implementation ExtremeSportViewDrawer

- (UIView *)contentView {
    return [[ExtremeView alloc] init];
}

- (void)fillView:(ExtremeView *)view withObject:(id<ViewCellItemInterface>)object {
    [view fillWithSport:object];
}

@end
