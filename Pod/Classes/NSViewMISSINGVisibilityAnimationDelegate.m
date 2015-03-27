//
//  NSViewMISSINGVisibilityAnimationDelegate.m
//  NSView+MISSINGVisibility
//
//  Created by Valentin Shergin on 27/03/15.
//  Copyright (c) 2015 Shergin Research. All rights reserved.
//

#import "NSViewMISSINGVisibilityAnimationDelegate.h"

#import <AppKit/AppKit.h>


@implementation NSViewMISSINGVisibilityAnimationDelegate

- (void)animationDidStop:(CAAnimation *)animation finished:(BOOL)finished
{
	if (finished) {
		self.view.hidden = YES;
	}
}

@end
