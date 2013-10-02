//
//  MyCustomNavigationBar.m
//  Custom UINavigationBar Demo
//
//  Created by Ryan Twomey on 9/28/11.
//  Copyright 2011 Draconis Software. All rights reserved.
//

#import "MyCustomNavigationBar.h"
#define IOSVersion [[[[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."] objectAtIndex:0] intValue]

@implementation MyCustomNavigationBar

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
//	UIImage *image = [UIImage imageNamed:@"Custom-Nav-Bar-BG.png"];
	UIImage *image = [[UIImage imageNamed:@"Custom-Nav-Bar-BG.png"] stretchableImageWithLeftCapWidth:0 topCapHeight:10];    
    
    NSLog(@"self.frame.size.height :%f",self.frame.size.height);
    
    [image drawInRect:CGRectMake(0,  0, self.frame.size.width, self.frame.size.height)];

    if (IOSVersion <7) {
    }else{
        NSLog(@"rect.size.height :%f",rect.size.height);
        self.translucent = NO;
        self.tintColor = [UIColor whiteColor];
        self.barStyle = UIBarStyleDefault;
        self.barTintColor = [UIColor redColor];
        
    }
}

@end
