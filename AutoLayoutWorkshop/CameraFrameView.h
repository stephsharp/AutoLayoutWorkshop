//
// Created by James Dunwoody on 2/06/15.
// Copyright (c) 2015 NAB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CameraFrameView : UIView

@property (strong, nonatomic) IBInspectable UIColor *colour;
@property (nonatomic) IBInspectable CGFloat lineWidth;
@property (nonatomic) IBInspectable CGFloat margin;
@property (nonatomic) IBInspectable CGFloat shortEdgeLength;

@end
