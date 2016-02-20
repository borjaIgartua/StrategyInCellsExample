//
//  CombatSportViewDrawer.m
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "CombatSportViewDrawer.h"
#import "ViewCellItemInterface.h"
#import "CombatView.h"

@implementation CombatSportViewDrawer

- (UIView *)contentView {
    return [[CombatView alloc] init];
}

- (void)fillView:(CombatView *)view withObject:(id<ViewCellItemInterface>)object {
    return [view fillWithSport:object];
}

@end
