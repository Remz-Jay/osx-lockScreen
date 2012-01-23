//
//  AppDelegate.h
//  lockScreen
//
//  Created by Remco Overdijk on 22-01-12.
//  Copyright (c) 2012 Rem.co Software Solutions. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlightImage;
    
}

-(IBAction)lockScreen:(id)sender;
-(IBAction)toggleLogin:(id)sender;
-(void)addAppAsLoginItem;
-(void)deleteAppFromLoginItem;

@property (assign) IBOutlet NSWindow *window;

@end
