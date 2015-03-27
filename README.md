# NSView+MISSINGVisibility

[![Version](https://img.shields.io/cocoapods/v/NSView+MISSINGVisibility.svg?style=flat)](http://cocoadocs.org/docsets/NSView+MISSINGVisibility)
[![License](https://img.shields.io/cocoapods/l/NSView+MISSINGVisibility.svg?style=flat)](http://cocoadocs.org/docsets/NSView+MISSINGVisibility)
[![Platform](https://img.shields.io/cocoapods/p/NSView+MISSINGVisibility.svg?style=flat)](http://cocoadocs.org/docsets/NSView+MISSINGVisibility)

A very tiny library that add `visibility` concept (somethings like property `hidden` but better) for NSView. It allows easily to show and hide views with animation and passion.

Besides, it allows to avoid using "negative boolean logic" (see [Code Complete, page 269, Use positive boolean variable names](https://books.google.ru/books?id=I-83BAAAQBAJ&lpg=PA268&ots=4EQ6sGrC4q&dq=Code%20Complete%2C%20%22Use%20positive%20boolean%20variable%20names%22&hl=ru&pg=PA268#v=onepage&q&f=false) for more information).

## Usage

    #import "NSView+MISSINGVisibility.h"


    NSButton *button = [[NSButton alloc] initWithFrame:buttonFrame];
    NSProgressIndicator *indicator = [[NSProgressIndicator alloc] initWithFrame:indicatorFrame];
    indicator.hidden = YES;

    // And later instead of use `button.hidden = YES;` you can use:

    [button setVisible:NO animated:YES];

    // And animation will start but property `isVisible` become `NO` synchronously.
    // And you will be able access it and control it consistently. Like this:

    [indicator setVisible:(!button.isVisible) animated:YES];


## Requirements

Nothing.

## Installation

NSView+MISSINGVisibility is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "NSView+MISSINGVisibility"

## Author

Valentin Shergin, valentin@shergin.com

## License

NSView+MISSINGVisibility is available under the MIT license. See the LICENSE file for more info.
