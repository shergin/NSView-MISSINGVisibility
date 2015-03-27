//
//  NSView+MISSINGVisibility.h
//  NSView+MISSINGVisibility
//
//  Created by Valentin Shergin on 27/03/15.
//  Copyright (c) 2015 Shergin Research. All rights reserved.
//

#import <AppKit/AppKit.h>

@interface NSView (MISSINGVisibility)

@property (nonatomic, getter=isVisible) BOOL visible;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;

@end
