//
//  NSViewMISSINGVisibilityAnimationDelegate.h
//  NSView+MISSINGVisibility
//
//  Created by Valentin Shergin on 27/03/15.
//  Copyright (c) 2015 Shergin Research. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSViewMISSINGVisibilityAnimationDelegate : NSObject

@property (nonatomic, weak) NSView *view;
@property (nonatomic, strong) NSString *animationKey;

@end
