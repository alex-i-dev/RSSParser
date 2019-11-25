//
//  RSSItemEntity.m
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import "RSSItemEntity.h"

@implementation RSSItemEntity

+ (instancetype)rssItemWith:(NSString *)title andRssDescription:(NSString *)rssDescription andImage:(UIImage *)image {
    RSSItemEntity *item = [RSSItemEntity new];
    [item loadWith:title andRssDescription:rssDescription andImage:image];
    
    return item;
}

- (void)loadWith:(NSString *)title andRssDescription:(NSString *)rssDescription andImage:(UIImage *)image {
    _title = title;
    _rssDescription = rssDescription;
    _image = image;
}

@end
