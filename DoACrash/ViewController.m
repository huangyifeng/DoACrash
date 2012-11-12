//
//  ViewController.m
//  DoACrash
//
//  Created by HuangYiFeng on 11/12/12.
//  Copyright (c) 2012 aimob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - IBAction

- (void)beyondBoundsTapped:(id)sender
{
    NSArray *array = [NSArray arrayWithObject:@"hello"];
    [array objectAtIndex:2];
}

- (void)badAccessTapped:(id)sender
{
    //    NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    //    NSLog(@"%@",date);
    //    NSLog(@"%d",[date retainCount]);
    //    [date release];
    //    NSLog(@"%d",[date retainCount]);
    
    NSObject *obj = [[NSObject alloc] init];
    
    NSLog(@"before : %d",[obj retainCount]);
    [obj release];
    NSLog(@"after %d",[obj retainCount]);
}

//- (void)unRecgenizedSelector:(id)sender
//{
//    [NSObject callAMethodNotExsit];
//}

- (void)pointerProblem:(id)sender
{
    int *x = 5;
    *x = 45;
}

@end
