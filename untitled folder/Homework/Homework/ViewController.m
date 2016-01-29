//
//  ViewController.m
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import "ViewController.h"
#import "Gsm.h"
#import "DetailViewController.h"
#import "AddNewPhone.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(!self.dates) {
        self.dates = [[NSMutableArray alloc]init];
    };
    
//    if(!self.dates){
//        
//        Gsm* phone = [Gsm initWithModel:@" " andOwner:@" " andManufacturer:@" "];
//        
//        [self.dates insertObject:phone atIndex:0];
//    }
    self.GsmInfoTableView.dataSource = self;
    //self.GsmInfoTableView.delegate = self;
}

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
   // UITableViewCell *cell =[[UITableViewCell alloc] init];
    
     NSString *cellIdentifier = @"PhoneTableViewCell";
    
    UITableViewCell *cell ;
//    if(cell == nil){
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
//                                      reuseIdentifier:cellIdentifier];
//
//    }else{
//        
//        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    }
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text =[NSString stringWithFormat:@"Manufacturer: %@ Model: %@"
                          ,(NSString*)[self.dates[indexPath.row] manufacturer]
                          ,(NSString*)[self.dates[indexPath.row] modelGsm]];
    
    
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    
    return cell;
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dates.count;
}

//-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    //self.GsmInfoTableView.backgroundColor=[UIColor redColor];
    // Dispose of any resources that can be recreated.
}

//-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    AddNewPhone* addNewPhoneViewController = segue.destinationViewController;
//    addNewPhoneViewController.arr = self.dates ;
//}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
    NSString *cellToDetails = @"cellToDetails";
    NSString *toAddNewPhone = @"toAddNewPhone";
    
    Gsm *selectedPhone;
    
    if ([segue.identifier isEqualToString:cellToDetails]) {
        NSIndexPath *indexPath = [self.GsmInfoTableView indexPathForCell:sender];
        selectedPhone = self.dates[indexPath.row];
        DetailViewController* toVC = segue.destinationViewController;
        toVC.phone = selectedPhone;
    }
    
    if ([segue.identifier isEqualToString:toAddNewPhone]) {
        
        
        AddNewPhone* addNewPhoneViewController = segue.destinationViewController;
       addNewPhoneViewController.arr = self.dates ;
    }
}


@end
