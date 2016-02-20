//
//  CombatView.m
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "CombatView.h"

@interface CombatView ()

@property (nonatomic, strong) UIView *contentView;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *iconImageView;

@end

@implementation CombatView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if(self = [super initWithFrame:frame]) {
        
        [self setBackgroundColor:[UIColor lightGrayColor]];
        
        _contentView = [[UIView alloc] init];
        [_contentView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_contentView.layer setCornerRadius:5.0f];
        [_contentView setClipsToBounds:YES];
        [_contentView setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:_contentView];
        
        UIImage *iconImage = [UIImage imageNamed:@"combatIcon.png"];
        _iconImageView = [[UIImageView alloc] initWithImage:iconImage];
        [_iconImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_iconImageView setContentMode:UIViewContentModeScaleAspectFit];
        [_contentView addSubview:_iconImageView];
        
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_titleLabel setTextColor:[UIColor darkGrayColor]];
        [_contentView addSubview:_titleLabel];
        
        NSDictionary *views = NSDictionaryOfVariableBindings(_contentView, _iconImageView, _titleLabel);
        NSDictionary *metrics = @{@"iconWidth" : @(iconImage.size.width), @"iconHeight" : @(iconImage.size.height)};
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[_contentView]-5-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[_contentView]-5-|" options:0 metrics:nil views:views]];
        
        [_contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_iconImageView(==60)]-10-[_titleLabel]-10-|" options:NSLayoutFormatAlignAllCenterY metrics:metrics views:views]];
        [_contentView addConstraint:[NSLayoutConstraint constraintWithItem:_iconImageView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_contentView attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f]];

        
    }
    
    return self;
}

- (void)fillWithSport:(Sport *)sport {
    [_titleLabel setText:sport.sportDescription];
}

@end
