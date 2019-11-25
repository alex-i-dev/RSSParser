//
//  ViewController.m
//  RSSParser
//
//  Created by a_ildarkin on 14/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import "ViewController.h"
#import "RSSParser-Swift.h"

@interface ViewController () <RSSItemsListViewInput>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_output postViewDidLoad];
}

#pragma mark - RSSItemsListViewInput

- (void)prepareWith:(NSArray<RSSItemEntity *> * _Nonnull)placesContent {
    //TODO: build table!
}

@end
