//
//  OWMWeather.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMWeather.h"
#import "OWMAPIClient.h"

@implementation OWMWeather

+ (void)getWeatherByCityName:(NSString *)cityName block:(OWMWeatherBlock)block {
    [[OWMAPIClient client] getWeatherByCityName:cityName block:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

+ (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block {
    [[OWMAPIClient client] getWeatherByCityName:cityName countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

+ (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMWeatherBlock)block {
    [[OWMAPIClient client] getWeatherByCityID:cityID block:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

+ (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherBlock)block {
    [[OWMAPIClient client] getWeatherByCoordinates:coordinates block:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

+ (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block {
    [[OWMAPIClient client] getWeatherByCityZIPCode:ZIPCode countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

+ (void)getWeatherByRectangleZone:(NSString *)zone block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getWeatherByRectangleZone:zone block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getWeatherByCityIds:(NSArray *)cityIds block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getWeatherByCityIDs:cityIds block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMWeatherCycleArrayResultBlock)block {
    [[OWMAPIClient client] getWeatherByCycleZoneWithCoordinates:coordinates countOfCity:count block:^(NSDictionary *response, NSError *error) {
        OWMWeatherCycleArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherCycleArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getForecastByCityName:cityName countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getForecastByCityID:(NSUInteger)cityID block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getForecastByCityID:cityID block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getForecastByCoordinates:coordinates block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getForecastByCityZIPCode:ZIPCode countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityName:cityName countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityID:(NSUInteger)cityID block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityID:cityID block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCoordinates:coordinates block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityZIPCode:ZIPCode countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"coordinates": @"coord",
                                                                  @"weatherInfos": @"weather",
                                                                  @"base": @"base",
                                                                  @"main": @"main",
                                                                  @"visibility":  @"visibility",
                                                                  @"wind": @"wind",
                                                                  @"clouds": @"clouds",
                                                                  @"dt": @"dt",
                                                                  @"sys": @"sys",
                                                                  @"weatherID":  @"id",
                                                                  @"name": @"name",
                                                                  @"cod": @"cod"
                                                                  }];
}

@end
