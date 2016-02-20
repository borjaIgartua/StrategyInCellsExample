//
//  SportCell.m
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "SportCell.h"
#import "ViewDrawerInterface.h"

@implementation SportCell

#pragma mark - Instance initialization

/**
 * Initializes a table cell with a style and a reuse identifier and returns it to the caller.
 *
 * @param style A constant indicating a cell style. See “UITableViewCellStyle” for descriptions of these constants.
 * @param reuseIdentifier A string used to identify the cell object if it is to be reused for drawing multiple rows
 *                        of a table view. Pass nil if the cell object is not to be reused. You should use the same
 *                        reuse identifier for all cells of the same form.
 * @return An initialized UITableViewCell object or nil if the object could not be created.
 */
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self setBackgroundColor:[UIColor clearColor]];
    }
    
    return self;
}

#pragma mark - Visuals

/**
 * Prepares a reusable cell for reuse by the table view's delegate.
 */
- (void)prepareForReuse {
    [super prepareForReuse];
    
    UIView *contentSubView = [[[self contentView] subviews] lastObject];
    [contentSubView removeFromSuperview];
}

#pragma mark - Fill options

- (void)fillWithObject:(id<ViewCellItemInterface>)object {
    
    UIView *sportView = [[object viewDrawer] contentView];
    [sportView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [[object viewDrawer] fillView:sportView withObject:object];
    [self.contentView addSubview:sportView];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(sportView);
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[sportView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:views]];
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[sportView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:views]];
}

#pragma mark - Class methods

+ (NSString *)cellIdentifier {
    return @"SportCell";
}

@end
