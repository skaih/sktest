/********* TestPlugin.h Cordova Plugin Header *******/

#import <Cordova/CDV.h>
#define loginToken @"loginToken"
@interface Sktest : CDVPlugin
- (void)test:(CDVInvokedUrlCommand*)command;
    @end
