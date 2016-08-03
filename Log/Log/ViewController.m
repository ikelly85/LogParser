//
//  ViewController.m
//  Log
//
//  Created by kelly on 2016. 8. 3..
//  Copyright © 2016년 campmobile. All rights reserved.
//

#import "ViewController.h"
#import "MF_Base64Additions.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)click:(id)sender {
    NSString *text = [_textField stringValue];
    NSArray *textLines = [text componentsSeparatedByString:@"\n"];
    if ([textLines count] > 0) {
        NSString *log = @"";
        for (NSString *encodedText in textLines) {
            log = [NSString stringFromBase64String:encodedText];
            NSLog(@"%@", log);
        }
    }
}
@end
