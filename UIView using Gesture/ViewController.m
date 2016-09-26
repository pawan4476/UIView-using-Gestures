//
//  ViewController.m
//  UIView using Gesture
//
//  Created by Nagam Pawan on 9/19/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;


@end

@implementation ViewController

- (void)viewDidLoad {
    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view2 addGestureRecognizer:swipeRightOrange];
    [self.view2 addGestureRecognizer:swipeLeftOrange];
    
    
//    UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
//    swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
//    [self.view3 addGestureRecognizer:swipeRightBlack];
//    
//    
//    UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
//    swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
//    [self.view4 addGestureRecognizer:swipeLeftGreen];

//    UISwipeGestureRecognizer *swipeLeftPurple = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
//    swipeLeftPurple.direction = UISwipeGestureRecognizerDirectionLeft;
//    UISwipeGestureRecognizer *swipeRightPurple = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(slideToRightGestureRecognizer:)];
//    swipeRightPurple.direction = UISwipeGestureRecognizerDirectionRight;
//     [self.view1 addGestureRecognizer:swipeLeftPurple];
//    [self.view1 addGestureRecognizer:swipeRightPurple];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)handlePan:(UIPanGestureRecognizer *)recognizer{
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];

}
//-(IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender{
//    sender.direction = UISwipeGestureRecognizerDirectionLeft;
//    sender.view.center = CGPointMake(sender.view.center.x, sender.view.center.y);
//    [sender setDirection:UISwipeGestureRecognizerDirectionLeft];
//}
//-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
//    [UIView animateWithDuration:0.5 animations:^{
//        self.view1.frame = CGRectOffset(self.view1.frame, 320.0, 0.0);
//    }];
//}
//-(void)slideToRightGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
//    [UIView animateWithDuration:0.5 animations:^{
//        self.view1.frame = CGRectOffset(self.view2.frame, 320.0, 0.0);
//    }];
//}
-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.view2.frame = CGRectOffset(self.view2.frame, 110.0, 0.0);
//        self.view3.frame = CGRectOffset(self.view3.frame, 320.0, 0.0);
//        self.view4.frame = CGRectOffset(self.view4.frame, 320.0, 0.0);
    }];
}


-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.view2.frame = CGRectOffset(self.view2.frame, -110.0, 0.0);
//        self.view3.frame = CGRectOffset(self.view3.frame, -320.0, 0.0);
//        self.view4.frame = CGRectOffset(self.view4.frame, -320.0, 0.0);
    }];
}


    

@end
