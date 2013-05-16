//
//  HelloWorldViewController.h
//  TabelViewTutorial
//
//  Created by Karthik on 16/05/13.
//  Copyright (c) 2013 Karthik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@end
