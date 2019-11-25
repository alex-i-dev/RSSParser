//
//  RSSItemEntity.h
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

NS_ASSUME_NONNULL_BEGIN

@interface RSSItemEntity : NSObject

+ (instancetype)rssItemWith:(NSString *)title andRssDescription:(NSString *)rssDescription andImage:(UIImage *)image;

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSString *rssDescription;

// TODO: хранить здесь UI-представление - это плохое решение
@property (nonatomic, strong, readonly) UIImage *image;

@end

NS_ASSUME_NONNULL_END
