//
//  ViewController.m
//  JKDataManagerDemo
//
//  Created by JoongKwan Choi on 2014. 04. 28.
//  Copyright (c) 2014년 JoongKwan Choi. All rights reserved. (joongkwan.choi@gmail.com)
//

#import "ViewController.h"

#import "JKDataManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // ---------------------------------------------------
    // ex) write value
    // ---------------------------------------------------
    NSString * str = @"STR";
    [JKDataManager setString:str forKey:@"STRING"];
    [JKDataManager setFloat:1.5f forKey:@"FLOAT"];
    [JKDataManager setBool:YES forKey:@"BOOL"];
    
    // ---------------------------------------------------
    // ex) read value
    // when key doesn't exist, return default value
    // ---------------------------------------------------
    NSString * valStr  = [JKDataManager stringForKey:@"STRING" defaultString:@"-"];
    float      valFloat= [JKDataManager floatForKey:@"FLOAT"   defaultFloat:0.0f];
    BOOL       valBool = [JKDataManager floatForKey:@"BOOL"    defaultFloat:NO];
    id         valObj  = [JKDataManager objectForKey:@"OBJECT" defaultObject:nil];
    NSInteger  valInt  = [JKDataManager floatForKey:@"INTEGER" defaultFloat:-2];
    
    NSLog(@">>> string value < %@ >", valStr);
    NSLog(@">>> string value < %f >", valFloat);
    NSLog(@">>> string value < %@ >", (valBool ? @"YES" : @"NO"));
    NSLog(@">>> string value < %@ >", valObj);
    NSLog(@">>> string value < %d >", valInt);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
