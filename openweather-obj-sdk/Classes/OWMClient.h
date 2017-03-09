//
//  OWMClient.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OWMClient : NSObject

@property (strong, nonatomic, readonly) NSString *AppID;

+ (OWMClient *)client;

+ (OWMClient *)clientWithAppID:(NSString *)AppID;

@end
