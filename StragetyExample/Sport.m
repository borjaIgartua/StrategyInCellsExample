//
//  Sport.m
//  StragetyExample
//
//  Created by Borja on 20/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "Sport.h"

@implementation Sport

- (instancetype)initWithDescription:(NSString *)description type:(SportType)type {
    
    if(self = [super init]) {
        
        self.sportDescription = description;
        self.type = type;
    }
    
    return self;
}

@end
