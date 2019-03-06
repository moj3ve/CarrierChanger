#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
%config(generator=internal)

%group hook12

HBPreferences *KeyText12 = [[HBPreferences alloc] initWithIdentifier:@"com.bandarHl.carrierchanger"];

%hook SBTelephonyManager
- (void)_reallySetOperatorName:(id)arg1 inSubscriptionContext:(id)arg2
{
    //Change Carrier
    arg1 = [KeyText12 objectForKey:@"CarrierString"];
    %orig;
} 
%end
%end


%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.bandarHl.carrierchanger"];
   bool Enable = [([Key objectForKey:@"CarrierTweak"] ?: @(NO)) boolValue];

if (Enable) {
        %init(hook12);
}
}

