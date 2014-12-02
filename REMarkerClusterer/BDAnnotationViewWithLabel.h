//
//  BDAnnotationViewWithLabel.h
//  Pods
//
//  Created by Gennady Hieber on 02/12/14.
//
//

#import <MapKit/MapKit.h>

@interface BDAnnotationViewWithLabel : MKAnnotationView

@property (strong, nonatomic)   UILabel *label;

- (void)saveLabelWithCount:(NSInteger) count;

@end
