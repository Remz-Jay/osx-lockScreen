//
//  AppDelegate.h
//  TrackMix
//
//  Created by Remco Overdijk on 22-01-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlightImage;
    
}

-(IBAction)lockScreen:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
