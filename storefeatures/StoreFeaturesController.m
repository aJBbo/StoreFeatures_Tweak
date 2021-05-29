#include "StoreFeaturesController.h"

@implementation StoreFeaturesController


#define kPreferencesPath @"/var/mobile/Library/Preferences/cydiatweak.plist"

#define kPreferencesChanged "cydiatweak-preferencesChanged"

#define kBundlePath @"/Library/PreferenceBundles/Cydia.bundle"

 
- (instancetype)init {
    self = [super init];
    if (self) {
	HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
	appearanceSettings.tintColor = [UIColor colorWithRed:0.1f green:0.1f blue:0.1f alpha:1];
	appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
	self.hb_appearanceSettings = appearanceSettings;
    }
    
    return self;
}
- (id)specifiers {
    if(_specifiers == nil) {
	_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
    }
    return _specifiers;
}


+ (NSString *)hb_specifierPlist {
    return @"Root";
    
}



-(void)loadView {
    [super loadView];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(shareTapped)];
    
    
}

+ (UIColor *)hb_tintColor {
    return [UIColor colorWithRed:0.0/255.0 green:119.0/255.0 blue:190.0/255.0 alpha:1.0];
}

- (void)shareTapped {
    SLComposeViewController * composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composeController setInitialText:@"I'm using #StoreFeatures, an awesome Cydia tweak by @aJBboCydia. Get it now!"];
    
    [self.parentController presentViewController:composeController animated:YES completion:nil];
    
}


@end
