//
//  ViewController.m
//  FadeInFadeOut
//
//  Created by Fredrick Ohen on 10/12/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(showMessage:) userInfo:nil repeats:NO];
   
}
-(void) showMessage:(NSTimer *) timer
{
    [UIView animateWithDuration:2.0 animations:^{
        self.messageLabel.alpha = 1.0;
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:2.0 animations:^{
            self.messageLabel.alpha = 0.0;
        } completion:^(BOOL finished) {
            
            HomeControllerViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeStoryBoard"];
            
            [self.navigationController pushViewController:controller animated:YES];
        }];
        
    }];
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
