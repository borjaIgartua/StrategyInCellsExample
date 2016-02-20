//
//  ViewController.m
//  StragetyExample
//
//  Created by Borja on 19/2/16.
//  Copyright © 2016 Borja. All rights reserved.
//

#import "MainViewController.h"
#import "SportCell.h"


@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation MainViewController

- (instancetype)initWithDataSource:(NSArray *)dataSource {
    
    if(self = [super init]) {
        self.dataSource = dataSource;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    _tableView = [[UITableView alloc] init];
    [_tableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView setRowHeight:UITableViewAutomaticDimension];
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:_tableView];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(_tableView);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_tableView]|" options:0 metrics:nil views:views]];
}

#pragma mark - Table data source methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SportCell *result = (SportCell *) [tableView dequeueReusableCellWithIdentifier:[SportCell cellIdentifier]];
    
    if (result == nil) {
        
        result = [[SportCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[SportCell cellIdentifier]];
    }
    
    [result fillWithObject:self.dataSource[indexPath.row]];
    
    return result;
}

@end
