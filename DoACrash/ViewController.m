//
//  ViewController.m
//  DoACrash
//
//  Created by HuangYiFeng on 11/12/12.
//  Copyright (c) 2012 aimob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void)initUserData;

@property(nonatomic, assign)BOOL                    _testBool;
@property(nonatomic, assign)NSInteger               _testInteger;
@property(nonatomic, retain)NSMutableDictionary     *_testDict;

@end

@implementation ViewController

@synthesize _testBool       = _testBool;
@synthesize _testInteger    = _testInteger;
@synthesize _testDict       = _testDict;

- (void)dealloc
{
    [_testDict release];
    [super dealloc];
}

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

#pragma mark - private

- (void)initUserData
{
    self._testBool = YES;
    self._testInteger = 1;
    
    self._testDict = [NSMutableDictionary dictionary];
    [self._testDict setObject:@"Obama" forKey:@"userName"];
    [self._testDict setObject:@"(nod)" forKey:@"likeApple"];
}

#pragma mark - IBAction

- (void)beyondBoundsTapped:(id)sender
{
    NSArray *array = [NSArray arrayWithObject:@"hello"];
    [array objectAtIndex:2];
}

- (void)badAccessTapped:(id)sender
{
    NSObject *obj = [[NSObject alloc] init];
    [obj release];
    [obj autorelease];
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
