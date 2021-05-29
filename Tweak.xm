// by @aJBboCydia

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <Twitter/Twitter.h>
%config(generator=internal)

%group UIS
%hook UIStatusBarStyleAttributes
-(float) foregroundAlpha {
return (float)0.000000;
}
-(BOOL) isStatusBarHidden {
return FALSE;
}
%end
%end
%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"CyRe"] ?: @(NO)) boolValue];

if (Enable) {
   %init(UIS);
  
}
}


// Change Version iOS Cydua

%group HOOK1

HBPreferences *KeyText = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];

%hook CydiaObject
-(id) firmware
{
    //Change Carrier
    return [KeyText objectForKey:@"EnableChange"];
    %orig;
} 
%end
%end


%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"EnableVer"] ?: @(NO)) boolValue];

if (Enable) {
   %init(HOOK1);
  
}
}

%group UIT
%hook UITextInputTraits
-(long long) keyboardAppearance {
return 1;
}
%end
%end
%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"CoKey"] ?: @(NO)) boolValue];

if (Enable) {
   %init(UIT);
  
}
}



%group UICy
%hook Cydia
-(void) applicationDidEnterBackground:(id)arg1 {
return ;
}
-(void) applicationWillResignActive:(id)arg1 {
return ;
}
%end
%end
%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"BaCy"] ?: @(NO)) boolValue];

if (Enable) {
   %init(UICy);
  
}
}


%group UICy2

%hook UIApplication
-(void) _applicationDidEnterBackground {
return ;
}
%end
%end
%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"BaCy"] ?: @(NO)) boolValue];

if (Enable) {
   %init(UICy2);
  
}
}



%group UILa
%hook UINavigationBar
-(bool) prefersLargeTitles {
return false;
}
%end
%end
%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"NoLa"] ?: @(NO)) boolValue];

if (Enable) {
   %init(UILa);
  
}
}

%group UISer
%hook SearchController
-(bool) isSummarized {
return false;
}
%end
%end
%ctor {

    // Enable or Disable Switch
    HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
   bool Enable = [([Key objectForKey:@"DesSer"] ?: @(NO)) boolValue];

if (Enable) {
   %init(UISer);
  
}
}

%group UIBro
%hook UITabBar
-(void) setTintColor:(UIColor *)arg1 {
%orig([UIColor brownColor]);
}
%end
/*
%hook UITabBarButton
-(void) _setContentTintColor:(UIColor *)arg1 forState:(unsigned long long) {
%orig([UIColor brownColor]);
}
%end
*/
%hook UIButtonContent
-(void) setTitleColor:(UIColor *)arg1 {
%orig([UIColor brownColor]);
}
-(void) setImageColor:(UIColor *)arg1 {
%orig([UIColor brownColor]);
}
%end

%hook UITableViewCellSelectedBackground
-(void) setSelectionTintColor:(UIColor *)arg1 {
%orig([UIColor brownColor]);
}
%end
%end
%ctor {

  // Enable or Disable Switch
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
 bool Enable = [([Key objectForKey:@"CoBrown"] ?: @(NO)) boolValue];

if (Enable) {
 %init(UIBro);

}
}


%group rm


%hook UITableView
-(void) setSeparatorStyle:(long long)arg1 {
arg1 = 0;
return %orig;
}


%end
%end
%ctor {

 
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"ajbbodev.storefeatures"];
 bool Enable = [([Key objectForKey:@"rm"] ?: @(NO)) boolValue];

if (Enable) {
 %init(rm);

}
}




