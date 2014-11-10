//
//  ViewController.m
//  TestLayoutAnimation
//
//  Created by Andou on 14/10/24.
//  Copyright (c) 2014年 SCDev. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *topGreenView;
@property (nonatomic, strong)   UIView *views;
@property (nonatomic, strong) UIButton *leftButton;
@property (nonatomic, strong) UIButton *rightButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    btn.translatesAutoresizingMaskIntoConstraints = NO;
//    _views = [UIView new];
//    [_views setBackgroundColor:[UIColor greenColor]];
//    _views.layer.cornerRadius = 4.f;
//    [_views setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [self.view addSubview:_views];
//    
//    _topGreenView.layer.cornerRadius = 4.f;
//
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_views
//                                                                                                attribute:NSLayoutAttributeCenterX
//                                                                                                relatedBy:NSLayoutRelationEqual
//                                                                                                    toItem:self.view
//                                                                                                attribute:NSLayoutAttributeCenterX
//                                                                                                multiplier:1
//                                                                                                constant:0]];
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_views attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:-20]];
//    [self.view addConstraint:[NSLayoutConstraint
//                              constraintWithItem:_views
//                              attribute:NSLayoutAttributeWidth
//                              relatedBy:NSLayoutRelationEqual
//                              toItem:self.view
//                              attribute:NSLayoutAttributeHeight
//                              multiplier:0.3
//                              constant:0]];
//    [self.view addConstraint:[NSLayoutConstraint
//                              constraintWithItem:_views
//                              attribute:NSLayoutAttributeHeight
//                              relatedBy:NSLayoutRelationEqual
//                              toItem:self.view
//                              attribute:NSLayoutAttributeHeight
//                              multiplier:0.3
//                              constant:0]];
    
//    [_topGreenView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_topGreenView
//                                                          attribute:NSLayoutAttributeCenterX
//                                                          relatedBy:NSLayoutRelationEqual
//                                                             toItem:self.view
//                                                          attribute:NSLayoutAttributeCenterX
//                                                         multiplier:1
//                                                           constant:0]];
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_topGreenView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:-20]];
//    [self.view addConstraint:[NSLayoutConstraint
//                              constraintWithItem:_topGreenView
//                              attribute:NSLayoutAttributeWidth
//                              relatedBy:NSLayoutRelationEqual
//                              toItem:self.view
//                              attribute:NSLayoutAttributeHeight
//                              multiplier:0.3
//                              constant:0]];
//    [self.view addConstraint:[NSLayoutConstraint
//                              constraintWithItem:_topGreenView
//                              attribute:NSLayoutAttributeHeight
//                              relatedBy:NSLayoutRelationEqual
//                              toItem:self.view
//                              attribute:NSLayoutAttributeHeight
//                              multiplier:0.3
//                              constant:0]];
    
    
    
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_topGreenView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
//    [self.view addConstraint:[NSLayoutConstraint
//                              constraintWithItem:view
//                              attribute:NSLayoutAttributeCenterX
//                              relatedBy:NSLayoutRelationEqual
//                              toItem:self.view
//                              attribute:NSLayoutAttributeCenterX
//                              multiplier:1
//                              constant:0]];
//    
//    //距离底部20单位
//    //注意NSLayoutConstraint创建的constant是加在toItem参数的，所以需要-20。
//    [self.view addConstraint:[NSLayoutConstraint
//                              constraintWithItem:view
//                              attribute:NSLayoutAttributeBottom
//                              relatedBy:NSLayoutRelationEqual
//                              toItem:self.view
//                              attribute:NSLayoutAttributeBottom
//                              multiplier:1
//                              constant:-20]];
    //两个按钮在屏幕的上方，左按钮离屏幕左10个点，右按钮离屏幕右10个点，两个按钮间10个点，两个按钮等宽，水平对齐，离状态栏10个点

    
    //left 10
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_leftButton attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:10]];
    //right 10
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_rightButton attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:- 10]];
    
    //equel width
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_leftButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:_rightButton attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
    
    _leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_leftButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_leftButton setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:_leftButton];
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_rightButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_rightButton setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:_rightButton];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(_leftButton, _rightButton);// |-30.0-[view]-30.0-|
    NSString *firstViewKey= [views.allKeys firstObject];
    NSString *secondViewKey= [views.allKeys lastObject];
    //first
    //top 500
    NSString *veriFormat = [NSString stringWithFormat:@"V:|-200-[%@]", firstViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:veriFormat options:0 metrics:nil views:views]];
    //
    NSString *hFormat = [NSString stringWithFormat:@"H:|-100-[%@]", firstViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:hFormat options:0 metrics:nil views:views]];
    NSString *fwidthHeight = [NSString stringWithFormat:@"[%@(200,100)]", secondViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:fwidthHeight options:0 metrics:nil views:views]];
    

    
    //second
    NSString *xDistance = [NSString stringWithFormat:@"|-250-[%@]-|", secondViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:xDistance options:0 metrics:nil views:views]];
    
    NSString *VDistance = [NSString stringWithFormat:@"V:|-200-[%@]", secondViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:VDistance options:0 metrics:nil views:views]];
    
    //宽度
    NSString *widthHeight = [NSString stringWithFormat:@"V:[%@(200)]", secondViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:widthHeight options:0 metrics:nil views:views]];
    
    
    //both
//    NSString *equelWidth = [NSString stringWithFormat:@"|-[%@(%@)]-[%@]-|", firstViewKey, secondViewKey, secondViewKey];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:equelWidth options:0 metrics:nil views:views]];
    
    NSString *equelWidthY = [NSString stringWithFormat:@"V:[%@(%@)][%@]", firstViewKey, secondViewKey, secondViewKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:equelWidthY options:0 metrics:nil views:views]];
    
//    NSString *veriFormat = [NSString stringWithFormat:@"[%@(200)]", firstViewKey];
//    NSDictionary *dict1 = NSDictionaryOfVariableBindings(_boxV,_headerL,_imageV,_backBtn,_doneBtn);
//    NSDictionary *metrics = @{@"hPadding":@5,@"vPadding":@5,@"imageEdge":@150.0};
//    NSString *vfl = @"|-hPadding-[_boxV]-hPadding-|";
//    NSString *vfl0 = @"V:|-25-[_boxV]";
//    NSString *vfl3 = @"V:|-vPadding-[_headerL]-vPadding-[_imageV(imageEdge)]-vPadding-[_backBtn]-vPadding-|";
    
    
    //equel Y
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_leftButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_rightButton attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    //top
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_leftButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:- 100]];
    
    [DataModel getDictionary:^(NSDictionary *dictionary) {
        NSLog(@"dictionary: %@", dictionary);
    }];
    
}
- (IBAction)rightButtonPressed:(id)sender {
    [self replaceGreenViewTopConstraintWithConstant:-400];

//                [self replaceRightButtonConstraintWithConstant:-400];
    [UIView animateWithDuration:0.8 animations:^{
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        [self replaceOrangeButtonConstraintWithConstant:-300];
        [UIView animateWithDuration:0.5 animations:^{
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self replaceTopBlueViewConstraintWithConstant:350];
            [UIView animateWithDuration:0.8 animations:^{
                [self.view layoutIfNeeded];
            }];
        }];
    }];
}

- (void)replaceGreenViewTopConstraintWithConstant:(CGFloat)constant
{
    for (NSLayoutConstraint *constraint in self.views.superview.constraints) {
        if (constraint.firstItem == self.views && constraint.firstAttribute == NSLayoutAttributeBottom) {
            constraint.constant = constant;
        }
    }
}
/**
 *  change the left button bottom constraint
 *
 *  @param constant bottom distance
 */
- (void)replaceOrangeButtonConstraintWithConstant: (CGFloat)constant
{
    for (NSLayoutConstraint *constraint in self.leftButton.superview.constraints) {
        if (constraint.firstItem == self.leftButton && constraint.firstAttribute == NSLayoutAttributeTop) {
            constraint.constant = constant;
        }
    }
}
/**
 *  change the rightbutton bottom constraint
 *
 *  @param constant bottom distance
 */
- (void)replaceRightButtonConstraintWithConstant: (CGFloat)constant
{
    for (NSLayoutConstraint *constraint in self.rightButton.superview.constraints) {
        if (constraint.firstItem == self.rightButton && constraint.firstAttribute == NSLayoutAttributeBottom) {
            constraint.constant = constant;
        }
    }
}
/**
 *  change the topview connstraint
 *
 *  @param constant top constraint
 */
- (void)replaceTopBlueViewConstraintWithConstant: (CGFloat)constant
{
    for (NSLayoutConstraint *constraint in self.topGreenView.superview.constraints) {
        if (constraint.firstItem == self.topGreenView && constraint.firstAttribute == NSLayoutAttributeTop) {
            constraint.constant = constant;
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
