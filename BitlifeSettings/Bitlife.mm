#import <Preferences/PSListController.h>

@interface BitlifeListController: PSListController {
}
@end

@implementation BitlifeListController
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

/* The "Visit iOSGods.com" link inside the Preferences button */
- (void)link {
        UIApplication *application = [UIApplication sharedApplication];
        NSURL *URL = [NSURL URLWithString:@"https://iosgods.com"];
        [application openURL:URL options:@{} completionHandler:^(BOOL success) {
            if (success) {
                //NSLog(@"Opened url");
            }
        }];
}
@end

// vim:ft=objc
