//
//  AppDataManager.m
//  SampleSocketApp
//
//  Created by techjini on 31/05/20.
//  Copyright © 2020 techjini. All rights reserved.
//

#import "SMTAppDataManager.h"

@implementation SMTAppDataManager

+ (SMTAppDataManager*)sharedInstance {
    
    static SMTAppDataManager *myInstance = nil;
    if(myInstance == nil) {
        myInstance = [[[self class] alloc]init];
    }
    return myInstance;
}

- (NSString*)getBundleID {
    NSString *bundleId = [[NSBundle mainBundle] bundleIdentifier];
    return bundleId;
}

/*get bundle id of the app*/
-(NSString*)getAppName {
    NSString *appName = [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString*)kCFBundleNameKey];
   return appName;
}
-(CGSize)getScreenResolution {
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    CGSize screenSize = CGSizeMake(screenBounds.size.width * screenScale, screenBounds.size.height * screenScale);
    return screenBounds.size;
}

-(NSString*)getScreenIdFor:(UIViewController*)controller{
    
    NSString *screenId = NSStringFromClass([controller class]);
    return screenId;
}



@end
