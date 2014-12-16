//
//  BDAnnotationViewWithLabel.m
//  Pods
//
//  Created by Gennady Hieber on 02/12/14.
//
//

#import "BDAnnotationViewWithLabel.h"

@implementation BDAnnotationViewWithLabel

- (void)createLabelWithCount:(NSInteger)count {
    self.label = [[UILabel alloc] init];
    [self updateLabelWithCount:count];
    if (count > 99) {
        self.label.text = @"99+";
    } else {
        self.label.text = [NSString stringWithFormat:@"%ld", (long)count];
    }
    self.label.textColor = [UIColor whiteColor];
    self.label.backgroundColor = [UIColor blackColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.label sizeToFit];
    self.label.frame = CGRectMake(0, 0, 45, 45);
    CALayer *btnLayer = [self.label layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:20.0f];
    [btnLayer setBorderWidth:.0f];
    [self addSubview:self.label];
}

- (void)updateLabelWithCount:(NSInteger)count {
    if (self.label) {
        if (count > 99) {
            self.label.text = @"99+";
        } else {
            self.label.text = [NSString stringWithFormat:@"%ld", (long)count];
        }
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.label.frame.size.width, self.label.frame.size.height);
    }
    
}

- (void)saveLabelWithCount:(NSInteger)count {
    if (self.label) {
        [self updateLabelWithCount:count];
    } else {
        [self createLabelWithCount:count];
    }
}

@end
