//
//  SMTAPIManager.h
//  NetCoreCouchMarkPOC
//
//  Created by techjini on 11/06/20.
//  Copyright © 2020 techjini. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMTAPIManager : NSObject

-(void)checkIfConnectedCompletionHandler:(void (^)(NSDictionary* result))completionHandler;

-(void)getCouchMarkInfo:(void (^)(NSDictionary* result))completionHandler;

@end

NS_ASSUME_NONNULL_END
