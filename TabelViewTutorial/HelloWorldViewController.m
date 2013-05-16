//
//  HelloWorldViewController.m
//  TabelViewTutorial
//
//  Created by Karthik on 16/05/13.
//  Copyright (c) 2013 Karthik. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController (){
    NSArray *arrayOfNames;
}

@end

@implementation HelloWorldViewController
@synthesize displayLabel;
- (void)viewDidLoad
{
    arrayOfNames=[[NSArray alloc]initWithObjects:@"Srinivas",@"Thiru" ,@"Balu",@"Sreehari",@"karthik",nil];
    self.myTableView.delegate=self;
    self.myTableView.dataSource=self;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayOfNames.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *Cellidentifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Cellidentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cellidentifier];
        
    }
    cell.textLabel.text=[arrayOfNames objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    displayLabel.text=[arrayOfNames objectAtIndex:indexPath.row];
}
@end
