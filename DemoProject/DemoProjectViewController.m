//
//  DemoProjectViewController.m
//  DemoProject
//
//  Created by verve on 31/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "DemoProjectViewController.h"
#import "TBParsing.h"
@implementation DemoProjectViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    TBParsing *parsing = [[TBParsing alloc]init];
    [parsing initWithUrlString:@"http://www.google.com/ig/api?stock=dlf"];
    // NSLog(@"%@-->>%@===%@",[parsing displayElementName],[parsing displayAttributeName],[parsing displayAttributeValue]);
    array1 = [[NSMutableArray alloc]initWithArray:[parsing displayElementName]];
    array2 = [[NSMutableArray alloc]initWithArray:[parsing displayAttributeName]];
    array3 = [[NSMutableArray alloc]initWithArray:[parsing displayAttributeValue]];
    [super viewDidLoad];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
