//
//  ViewController.m
//  NotificationCustomView
//
//  Created by Bryan Ayllon on 6/27/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0,0 ,self.view.frame.size.width,self.view.frame.size.height)];
    myView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView];
    
    
    //swipe
    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedDown:)];
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    [myView addGestureRecognizer:swipeDownGestureRecognizer];
    
    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedUp:)];
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    [myView addGestureRecognizer:swipeUpGestureRecognizer];

}
-(void) swipedDown:(UIGestureRecognizer *) recognizer{
    NSLog(@"Swiped Down");
}


-(void) swipedUp:(UIGestureRecognizer *) recognizer{
    NSLog(@"Swiped up");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
