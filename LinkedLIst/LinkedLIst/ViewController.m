//
//  ViewController.m
//  LinkedLIst
//
//  Created by Shekhar  on 23/7/15.
//  Copyright (c) 2015 Edenred. All rights reserved.
//

#import "ViewController.h"
#import "LinkedList.h"

@interface ViewController ()
{
    LinkedList *linkedList;
    NSArray *lArray;
}
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadLinkedList];
    lArray = [linkedList allObjects];
    NSLog(@"Linked List count: %d", [linkedList count]);

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadLinkedList{
    linkedList = [LinkedList listWithObject:@"Red"];
    NSArray *colorArray = [NSArray arrayWithObjects:@"Blue",@"Green",@"Yellow",@"Orange",@"Purple", nil];
    for (NSString *colorString in colorArray) {
        [linkedList push:colorString];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [linkedList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    cell.textLabel.text = [lArray objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
