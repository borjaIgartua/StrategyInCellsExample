//
//  SportCell.h
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ViewCellItemInterface.h"

@interface SportCell : UITableViewCell

/**
 * Fill the content view with a model object
 */
- (void)fillWithObject:(id<ViewCellItemInterface>)object;

+ (NSString *)cellIdentifier;

@end
