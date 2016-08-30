//
//  ViewController.m
//  3D
//
//  Created by iOS on 16/8/27.
//  Copyright © 2016年 Davos Z. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
	NSInteger _num;
}

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	UITableView *view = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, 667)];
	view.delegate = self;
	view.dataSource = self;
	[self.view addSubview:view];
	_num = 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	static NSString *cellID = @"cellID";
	TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
	if (!cell) {
		cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//		cell.backgroundColor = [UIColor redColor];
		}
		cell.textLabel.text = [NSString stringWithFormat:@"第%ld行",indexPath.row];
	return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
	_num++;
	cell.layer.anchorPoint = CGPointMake(0, 0);
	cell.layer.transform = CATransform3DMakeRotation(M_PI /6, 0, 0, 1);
	[UIView animateWithDuration:.5 animations:^{
		cell.layer.transform = CATransform3DMakeRotation(0, 0, 0, 0);
	}];

}
@end
