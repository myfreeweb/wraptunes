//
//  WTAppDelegate.m
//  WrapTunes
//
//  Created by Greg V on 8/25/12.
//  Copyright (c) 2012 { float:both }. All rights reserved.
//

#import "WTAppDelegate.h"

@implementation WTAppDelegate

- (void)playpause
{
    [scripter evaluateWebScript:playpauseScript];
}

- (void)next
{
    [scripter evaluateWebScript:nextScript];
}

- (void)prev
{
    [scripter evaluateWebScript:prevScript];
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.webview setMainFrameURL:@"http://music.yandex.ru"];
    scripter = [self.webview windowScriptObject];
    playpauseScript = @"Mu.Player.isPaused() ? Mu.Player.resume() : Mu.Player.pause()";
    nextScript = @"Mu.Songbird.playNext()";
    prevScript = @"Mu.Songbird.playPrev()";
}

@end
