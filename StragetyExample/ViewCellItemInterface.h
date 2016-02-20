//
//  ViewCellItemInterface.h
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

@protocol ViewDrawerInterface;

@protocol ViewCellItemInterface <NSObject>

@property (nonatomic, readonly, strong) id <ViewDrawerInterface> viewDrawer;

@end
