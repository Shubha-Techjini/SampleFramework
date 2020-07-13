//
//  AppDataManager.h
//  SampleSocketApp
//
//  Created by techjini on 31/05/20.
//  Copyright © 2020 techjini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMTAppDataManager : NSObject

@property(nonatomic,retain) NSMutableArray *listOfScreenInfo;

/*create Shared instance of the class*/
+ (SMTAppDataManager*)sharedInstance;

/*get bundle id of the app*/
-(NSString*)getBundleID;

/*get bundle id of the app*/
-(NSString*)getAppName;

/*get screen resolution of the app*/
-(CGSize)getScreenResolution;

/*get screen Id of particular screen*/
-(NSString*)getScreenIdFor:(UIViewController*)controller;
@end

NS_ASSUME_NONNULL_END
