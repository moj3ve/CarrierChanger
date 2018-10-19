#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
%config(generator=internal)



%group HOOK1

HBPreferences *KeyText = [[HBPreferences alloc] initWithIdentifier:@"com.bandarHl.carrierchanger"];

%hook SBTelephonyManager
- (void)_reallySetOperatorName:(id)arg1
{
    //Change Carrier
    arg1 = [KeyText objectForKey:@"CarrierString"];
    %orig;
} 
%end
%end


%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.bandarHl.carrierchanger"];
   bool Enable = [([Key objectForKey:@"CarrierTweak"] ?: @(NO)) boolValue];

if (Enable) {
   %init(HOOK1);
  
}
}

