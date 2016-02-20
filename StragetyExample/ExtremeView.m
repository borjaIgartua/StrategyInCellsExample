//
//  ExtremeView.m
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "ExtremeView.h"

@interface ExtremeView ()

@property (nonatomic, strong) UILabel *descriptionLabel;

@end

@implementation ExtremeView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if(self = [super initWithFrame:frame]) {
        
        [self setBackgroundColor:[UIColor lightGrayColor]];
        
        _descriptionLabel = [[UILabel alloc] init];
        [_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_descriptionLabel setTextAlignment:NSTextAlignmentRight];
        [_descriptionLabel setTextColor:[UIColor darkGrayColor]];
        [_descriptionLabel setNumberOfLines:0];
        [self addSubview:_descriptionLabel];
        
        NSDictionary *views = NSDictionaryOfVariableBindings(_descriptionLabel);
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-15-[_descriptionLabel]-15-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-15-[_descriptionLabel]-15-|" options:0 metrics:nil views:views]];
    }
    
    return self;
}

- (void)fillWithSport:(Sport *)sport {
    [_descriptionLabel setText:sport.sportDescription];
}

@end
