//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISPet.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    FISDog *puppy = [[FISDog alloc]init];
    FISPet *petpuppy = puppy;
    [petpuppy makeASound];
    NSLog(@"%@", [petpuppy makeASound]);
    
    
    FISPet *cat = [[FISPet alloc]init];
    FISDog *dogThatIsReallyACat = (FISDog *)cat;
     NSLog(@"%@", [dogThatIsReallyACat makeASound]);
    
    
    
    
    
    
    
    return YES;
}

@end
