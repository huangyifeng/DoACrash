//
//  ViewController.h
//  DoACrash
//
//  Created by HuangYiFeng on 11/12/12.
//  Copyright (c) 2012 aimob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
@private
    BOOL                _testBool;
    NSInteger           _testInteger;
    NSMutableDictionary *_testDict;
    
}

- (IBAction)beyondBoundsTapped:(id)sender;

- (IBAction)badAccessTapped:(id)sender;

- (IBAction)unRecgenizedSelector:(id)sender;

- (IBAction)pointerProblem:(id)sender;

@end
