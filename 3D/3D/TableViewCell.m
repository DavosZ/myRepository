//
//  TableViewCell.m
//  3D
//
//  Created by iOS on 16/8/27.
//  Copyright © 2016年 Davos Z. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//	self.layer.transform = CATransform3DMakeRotation(M_PI /6, 0, 0, 1);
//	[UIView animateWithDuration:.5 animations:^{
//		self.layer.transform = CATransform3DMakeRotation(0, 0, 0, 0);
//	}];
	return self;
}
@end
