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
    myView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:myView];
    
    
    
    notificationView = [[UIView alloc] initWithFrame:CGRectMake(0,-1000 ,self.view.frame.size.width,self.view.frame.size.height)];
    notificationView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"mountain2.png"]];

//    notificationView.backgroundColor = [UIColor redColor];
    [self.view addSubview:notificationView];
    
    //swipe
    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedDown:)];
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    [myView addGestureRecognizer:swipeDownGestureRecognizer];
    
    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedUp:)];
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    [notificationView addGestureRecognizer:swipeUpGestureRecognizer];
    

}
-(void) swipedDown:(UIGestureRecognizer *) recognizer{
    NSLog(@"Swiped Down");
    [UIView animateWithDuration:.97 animations:^{
    CGRect notification = notificationView.frame;
    notification.origin.y = 0;
    notificationView.frame = notification;
    }];
}


-(void) swipedUp:(UIGestureRecognizer *) recognizer{
    NSLog(@"Swiped up ");
    [UIView animateWithDuration:.97 animations:^{
    CGRect notification = notificationView.frame;
    notification.origin.y = -1000;
    notificationView.frame = notification;
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
