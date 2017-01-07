/***************** TestPlugin.m ********************/

#import "Sktest.h"
#import <Cordova/CDV.h>
#import "DCore.h"
@implementation Sktest
- (void)test:(CDVInvokedUrlCommand*)command
    {
        UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"标题" message:@"你好世界！" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alertview show];
		
		
		[DCore al:@"first"];
    NSString* action = [command.arguments objectAtIndex:0];
	[DCore al:action];
	NSString* str = [command.arguments objectAtIndex:1];
	if([action isEqualToString:@"al"]){ 
	  [DCore al:str];
	}else if([action isEqualToString:@"loginsave"]){ 
	  NSUserDefaults *standardDefaults = [NSUserDefaults standardUserDefaults];
       [standardDefaults setObject:str forKey:loginToken];
       [standardDefaults synchronize];
	}else if([action isEqualToString:@"getLoginToken"]){ 
	  NSUserDefaults *standardDefaults = [NSUserDefaults standardUserDefaults];
      NSString *token = [standardDefaults stringForKey:loginToken];
	  //CDVPluginResult *result;
      //result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:token]; 
      //[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
	}
    } 
    @end
