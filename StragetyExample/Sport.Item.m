//
//  Sport+Item.m
//  StragetyExample
//
//  Created by Borja on 20/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "Sport+Item.h"
#import "CombatSportViewDrawer.h"
#import "ExtremeSportViewDrawer.h"

@implementation Sport (Item)

- (id<ViewDrawerInterface>)viewDrawer {
    
    switch (self.type) {
            
        case ExtremeSport:
            return [[ExtremeSportViewDrawer alloc] init];
            break;
            
        case CombatSport:
            return [[CombatSportViewDrawer alloc] init];
            break;
    }
}

@end
