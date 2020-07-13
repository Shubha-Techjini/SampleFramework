//
//  SMTAPIManager.m
//  NetCoreCouchMarkPOC
//
//  Created by techjini on 11/06/20.
//  Copyright © 2020 techjini. All rights reserved.
//

#import "SMTAPIManager.h"
#import "SMTAppDataManager.h"
#import "SMTConstants.h"

@implementation SMTAPIManager


-(void)checkIfConnectedCompletionHandler:(void (^)(NSDictionary* result))completionHandler{
    NSString *baseUrl = @"http://52.4.67.55/Netcore_Smartech2_POC_Web/index.php/api/Api_connection_details/web_conn_check";
    NSURLComponents *components = [NSURLComponents componentsWithString:baseUrl];
    NSURLQueryItem *userId = [NSURLQueryItem queryItemWithName:USER_ID value:@"2"];
    NSURLQueryItem *uuid = [NSURLQueryItem queryItemWithName:DEVICE_UUID value:@"ShubhaUUID"];
    NSURLQueryItem *platform = [NSURLQueryItem queryItemWithName:@"platform" value:@"ios"];
    NSURLQueryItem *appId = [NSURLQueryItem queryItemWithName:APP_BUNDLE_ID value:[[SMTAppDataManager sharedInstance] getBundleID]];
    NSURLQueryItem *appName = [NSURLQueryItem queryItemWithName:@"appName" value:[[SMTAppDataManager sharedInstance] getAppName]];
    [components setQueryItems:@[userId,uuid,platform,appId,appName]];

    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[components URL]];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
      ^(NSData * _Nullable data,
        NSURLResponse * _Nullable response,
        NSError * _Nullable error) {
        
        if(data != nil) {
        NSDictionary *resultDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        completionHandler(resultDict);
        }
    }] resume];
}

-(void)getCouchMarkInfo:(void (^)(NSDictionary* result))completionHandler{
    
    
    NSString *baseUrl = @"http://52.4.67.55/Netcore_Smartech2_POC_Web/index.php/api/Api_connection_details/coachmark_info";
    NSURLComponents *components = [NSURLComponents componentsWithString:baseUrl];
    NSURLQueryItem *version = [NSURLQueryItem queryItemWithName:VERSION value:@"v1"];
    NSURLQueryItem *appId = [NSURLQueryItem queryItemWithName:APP_BUNDLE_ID value:[[SMTAppDataManager sharedInstance] getBundleID]];
    NSURLQueryItem *appName = [NSURLQueryItem queryItemWithName:@"appName" value:[[SMTAppDataManager sharedInstance] getAppName]];
    NSURLQueryItem *platform = [NSURLQueryItem queryItemWithName:@"platform" value:@"ios"];
    [components setQueryItems:@[platform,appId,appName,version]];

    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[components URL]];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
      ^(NSData * _Nullable data,
        NSURLResponse * _Nullable response,
        NSError * _Nullable error) {
        
        if(data != nil) {
        NSDictionary *resultDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            if(resultDict != nil){
                NSDictionary *dataDict = [resultDict objectForKey:@"data"];
                completionHandler(dataDict);
            }
        }
    }] resume];
}

@end
