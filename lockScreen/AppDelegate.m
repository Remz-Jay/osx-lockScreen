//
//  AppDelegate.m
//  TrackMix
//
//  Created by Remco Overdijk on 22-01-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)awakeFromNib {
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    NSBundle *bundle = [NSBundle mainBundle];
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"lock" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"lock_go" ofType:@"png"]];
    [statusItem setImage:statusImage];
    [statusItem setAlternateImage:statusHighlightImage];
    [statusItem setMenu:statusMenu];
    [statusItem setToolTip:@"rem.co anti hax0r screen locker"];
    [statusItem setHighlightMode:YES];
}

-(IBAction)lockScreen:(id)sender {
    NSTask *task;
    NSMutableArray *arguments = [NSArray arrayWithObject:@"-suspend"];
    
    task = [[NSTask alloc] init];
    [task setArguments: arguments];
    [task setLaunchPath: @"/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession"];
    [task launch];
    NSLog(@"screen is Locked");

}

@end
