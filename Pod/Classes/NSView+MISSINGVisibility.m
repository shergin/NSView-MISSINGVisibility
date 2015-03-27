//
//  NSView+MISSINGVisibility.m
//  NSView+MISSINGVisibility
//
//  Created by Valentin Shergin on 27/03/15.
//  Copyright (c) 2015 Shergin Research. All rights reserved.
//

#import "NSView+MISSINGVisibility.h"

#import <QuartzCore/QuartzCore.h>

#import "NSViewMISSINGVisibilityAnimationDelegate.h"

NSString *const NSViewMISSINGVisibilityAnimationKeyShow = @"NSViewMISSINGVisibilityAnimationKeyShow";
NSString *const NSViewMISSINGVisibilityAnimationKeyHide = @"NSViewMISSINGVisibilityAnimationKeyHide";


@implementation NSView (MISSINGVisibility)

- (BOOL)isVisible
{
	return !self.hidden && ![self.layer animationForKey:NSViewMISSINGVisibilityAnimationKeyHide];
}

- (void)setVisible:(BOOL)visible
{
	[self setVisible:visible animated:NO];
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
	if (self.visible == visible) {
		return;
	}

	[self.layer removeAnimationForKey:NSViewMISSINGVisibilityAnimationKeyShow];
	[self.layer removeAnimationForKey:NSViewMISSINGVisibilityAnimationKeyHide];

	if (!animated) {
		self.layer.opacity = 1.f;
		self.hidden = !visible;
		return;
	}

	self.hidden = NO;

	CGFloat fromAlpha = visible ? 0.f : 1.f;
	CGFloat toAlpha = visible ? 1.f : 0.f;
	NSString *animationKey = visible ? NSViewMISSINGVisibilityAnimationKeyShow : NSViewMISSINGVisibilityAnimationKeyHide;

	CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
	animation.fromValue = @(fromAlpha);
	animation.toValue = @(toAlpha);
	animation.removedOnCompletion = YES;
	animation.fillMode = kCAFillModeForwards;

	if (!visible) {
		NSViewMISSINGVisibilityAnimationDelegate *delegate = [[NSViewMISSINGVisibilityAnimationDelegate alloc] init];
		delegate.view = self;
		animation.delegate = delegate;
	}

	[self.layer addAnimation:animation forKey:animationKey];
}

@end
