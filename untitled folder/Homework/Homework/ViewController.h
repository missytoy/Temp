//
//  ViewController.h
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


@property (nonatomic,strong) NSMutableArray* dates;

@property (weak, nonatomic) IBOutlet UITableView *GsmInfoTableView;

//-(NSMutableArray*)	addObjects :(NSMutableArray*) link;

@end

