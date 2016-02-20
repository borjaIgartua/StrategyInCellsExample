//
//  Sport.h
//  StragetyExample
//
//  Created by Borja on 20/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SportType) {
    ExtremeSport          = 0,
    CombatSport,
};

@interface Sport : NSObject

- (instancetype)initWithDescription:(NSString *)description type:(SportType)type;

@property (nonatomic, assign) SportType type;
@property (nonatomic, copy) NSString *sportDescription;

@end
