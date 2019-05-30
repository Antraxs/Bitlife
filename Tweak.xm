@import Foundation;
@import UIKit;
#import <substrate.h>
#import "vm_writeData.h"

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.elantraxs.bitlife.plist"

inline bool GetPrefBool(NSString *key) {
		return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%hook Apollo16SimParent

-(float) askForMoneyAmount {

return 100000;

}

-(float) att_money {

return 100;

}

-(float) att_religiousness {

return 100;

}

-(bool) willAgreeToSpendTime {

return TRUE;

}

%end

//

%hook Apollo16SimPerson

-(float) att_fame {

return 100;

}

-(float) att_generosity {

return 100;

}

-(float) att_karma {

return 100;

}

-(float) att_wiliness {

return 100;

}

-(bool) shouldSufferMiscarriage {

return FALSE;

}

-(float) annualCostOfLiving {

return 1;

}

-(float) att_willpower {

return 100;

}

-(float) fertility {

return 100;

}

-(int) heroTimesAskedForMoney {

return 0;

}

-(int) heroTimesAskedForMoneyThisYear {

return 0;

}

-(int) heroAgeAtLastAskForMoney {

return 0;

}

-(int) heroAgeAtLastGiveMoney {

return 0;

}

%end

//

%hook Apollo16SimSibling

-(bool) willAgreeToSpendTime {

return TRUE;

}

%end

//

%hook Apollo16SimSocialMedia 

-(bool) verified {

return TRUE;

}

-(int) followers {

return 999999999;

}

-(int) getLikesForProspectivePost {

return 999999999;

}

%end

//

%hook Apollo16SimPet

-(float) petValue {

return 0;

}

-(float) monthlyExpense {

return 0;

}

-(int) numTimesAttackedHero {

return 0;

}

-(bool) heroIsFinaciallyResponsible {

return TRUE;

}

-(int) yearsSinceEscape {

return 0;

}

-(int) numTimesAttackedOtherPerson {

return 0;

}

-(int) numTimesAttackedOtherPet {

return 0;

}

-(float) att_intelligence {

return 100;

}

-(float) att_health {

return 100;

}

-(float) att_happiness {

return 100;

}

-(float) att_craziness {

return 0;

}

-(float) att_danger {

return 0;

}

%end

//

%hook Apollo16SimHouse

-(int) bedrooms {

return 10;

}

-(int) bathrooms {

return 10;

}

-(float) monthlyEspense {

return 0;

}

-(bool) repossessionWarningInEffect {

return FALSE;

}

-(int) age {

return 1;

}

-(float) condition {

return 100;
}

%end

//

%hook Apollo16SimCar

-(float) dealerPrice {

return 0;

}

-(bool) stolen {

return FALSE;

}

-(float) carValue {

return 999999999;

}

-(int) ageAtLastRepair {

return 0;

}

-(bool) repossessionWarningInEffect {

return FALSE;

}

-(int) age {

return 1;

}

-(float) condition {

return 100;

}

%end 

//

%hook Apollo16SimCarRepair

-(float) cost {

return 0;

}

%end

//

%hook Apollo16SimCrime

-(int) sentenceYears {

return 0;

}

-(float) defenseCost {

return 0;

}

%end

//

%hook Apolo16SimChild

-(float) annualCostOfLiving {

return 0;

}

%end 

//

%hook Apollo16SimDoctor

-(float) att_cost {

return 0;

}

%end

//

%hook Apollo16SimFinances 

-(float) monthlyOutflow {

return 0;

}

-(float) monthlyLoanPayments {

return 0;

}

-(float) annualyLivingExpenses {

return 0;

}

-(double) netWorth {

return 999999999;

}

%end

//

%hook Apollo16SimHorseRacingSession

-(int) betAmount {

return 1000000;

}

-(bool) heroWins {

return TRUE;

}

%end

//

%hook Apollo16SimJob

-(int) salary {

return 500000;

}

%end

//

%hook Apollo16SimLover

-(bool) willAgreeToHaveBaby {

return TRUE;

}

-(int) timesCheatedOnHero {

return 0;

}

-(bool) willAgreeToThreesome {

return TRUE;

}

-(int) timesHeroCheatedOn {

return 0;

}

%end

//

%hook Apollo16SimOccupation 

-(float) salary {

return 500000;

}

%end

%hook Apollo16MissionVars

-(bool) isUserBitizen {

return TRUE;

}

-(bool) insertBitizenshipPaywallBeforeGenerationLife {

return FALSE;

}

-(bool) userBoughtBitizenship {

return TRUE;

}

-(bool) userGivenBitizenship {

return TRUE;

}

%end

%hook Apollo16Life 

-(bool) drivingLicense {

return TRUE;

}

%end

// Automatic Popup Code
void setup() {
    UIAlertController *igcredits = [UIAlertController alertControllerWithTitle:@"Made for iOSGods.com" message:@"El Antraxs Cheats by El Antraxs for iOSGods.com!\n\nVisit the hack's official topic on iOSGods for more information and updates!" preferredStyle:UIAlertControllerStyleAlert];


    UIAlertAction *iosgods = [UIAlertAction actionWithTitle:@"Visit iOSGods.com!" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        UIApplication *application = [UIApplication sharedApplication];
        NSURL *URL = [NSURL URLWithString:@"https://iosgods.com/forum/13-free-jailbroken-cydia-cheats/"];
        [application openURL:URL options:@{} completionHandler:^(BOOL success) {
            if (success) {
                //NSLog(@"Opened url");
            }
        }];
        
    }];
    
    UIAlertAction *clubs = [UIAlertAction actionWithTitle:@"Visit the Clubs!" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        UIApplication *application = [UIApplication sharedApplication];
        NSURL *URL = [NSURL URLWithString:@"https://iosgods.com/clubs/"];
        [application openURL:URL options:@{} completionHandler:^(BOOL success) {
            if (success) {
                //NSLog(@"Opened url");
            }
        }];
    }];
    
    UIAlertAction *thankyou = [UIAlertAction actionWithTitle:@"Thank you!" style:UIAlertActionStyleCancel handler:nil];
    
    [igcredits addAction:iosgods];
    [igcredits addAction:clubs];
    [igcredits addAction:thankyou];


    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:igcredits animated:true completion:nil];
}

void unsubscribeToLaunchEvent(void);

static void didFinishLaunching(CFNotificationCenterRef center, void *observer,
                               CFStringRef name, const void *object, CFDictionaryRef info) {
    setup();
    unsubscribeToLaunchEvent();
}

const char *authObserver = "authObserver";

void subscribeToLaunchEvent() {
    CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), authObserver, &didFinishLaunching,
                                    (CFStringRef)UIApplicationDidFinishLaunchingNotification,
                                    NULL, CFNotificationSuspensionBehaviorDrop);
}

void unsubscribeToLaunchEvent() {
    CFNotificationCenterRemoveObserver(CFNotificationCenterGetLocalCenter(), authObserver,
                                       (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL);
}

__attribute__((constructor)) static void initialize() {
    subscribeToLaunchEvent();
}