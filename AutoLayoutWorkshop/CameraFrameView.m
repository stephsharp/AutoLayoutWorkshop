//
// Created by James Dunwoody on 2/06/15.
// Copyright (c) 2015 NAB. All rights reserved.
//

#import "CameraFrameView.h"

@interface CameraFrameView ()
@end

@implementation CameraFrameView

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, self.colour.CGColor);
    CGContextSetLineWidth(context, self.lineWidth);

    CGRect innerRect = CGRectMake(
        rect.origin.x + self.margin,
        rect.origin.y + self.margin,
        rect.origin.x + rect.size.width - self.margin * 2.0f,
        rect.origin.y + rect.size.height - self.margin * 2.0f
    );

    CGContextBeginPath(context);

    CGContextMoveToPoint(context, innerRect.origin.x, innerRect.origin.y + self.shortEdgeLength);
    CGContextAddLineToPoint(context, innerRect.origin.x, innerRect.origin.y);
    CGContextAddLineToPoint(context, innerRect.origin.x + innerRect.size.width, innerRect.origin.y);
    CGContextAddLineToPoint(context, innerRect.origin.x + innerRect.size.width, innerRect.origin.y + self.shortEdgeLength);

    CGContextMoveToPoint(context, innerRect.origin.x + innerRect.size.width, innerRect.origin.y + innerRect.size.height - self.shortEdgeLength);
    CGContextAddLineToPoint(context, innerRect.origin.x + innerRect.size.width, innerRect.origin.y + innerRect.size.height);
    CGContextAddLineToPoint(context, innerRect.origin.x, innerRect.origin.y + innerRect.size.height);
    CGContextAddLineToPoint(context, innerRect.origin.x, innerRect.origin.y + innerRect.size.height - self.shortEdgeLength);

    CGContextStrokePath(context);
}

@end
