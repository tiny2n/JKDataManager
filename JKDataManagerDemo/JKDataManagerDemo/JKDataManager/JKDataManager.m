
/**
 JKLib
 
 Copyright (c) 2011 tiny2n All rights reserved.
 
 @file      JKDataManager.m
 @brief     각종 데이타 타입을 NSUserDefaults 클래스에 싱크해주는 클래스
 @author    Choi Joong-Kwan (tiny2n@naver.com)
 @date      2011.07.09
 @version   1.0.0
 */

#import "JKDataManager.h"


@implementation JKDataManager

#pragma mark -
#pragma mark NSObject
/**
 should read to value id type
 @param NSString: key
 @param NSString: Default value
 @return NSString read value
 */
+ (id)objectForKey:(NSString *)key defaultObject:(id)defaultObject
{
	// void * get
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];

	id result = [userDefaults objectForKey:key];
	if (result) return result;
	
	return defaultObject;
}

/**
 should write to value id type
 @param id: value
 @param NSString: key
 @return BOOL:success or fail
 */
+ (BOOL)setObject:(id)value forKey:(NSString *)key
{
	// void * set
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:value forKey:key];
	
	return [userDefaults synchronize];
}

#pragma mark -
#pragma mark NSString
/**
 should read to value NSString type
 @param NSString: key
 @param NSString: Default value
 @return NSString read value
 */
+ (NSString *)stringForKey:(NSString *)key defaultString:(NSString *)defaultString
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	
    id result = [userDefaults objectForKey:key];
    if ([result isKindOfClass:[NSString class]]) return result;
	
	return defaultString;
}

/**
 should write to value NSString type
 @param NSString: value
 @param NSString: key
 @return BOOL:success or fail
 */
+ (BOOL)setString:(NSString *)value forKey:(NSString *)key
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:value forKey:key];
	
	return [userDefaults synchronize];
}

#pragma mark -
#pragma mark BOOL
/**
 should read to value BOOL type
 @param NSString: key
 @param BOOL: Default value
 @return BOOL read value
 */
+ (BOOL)boolForKey:(NSString *)key defaultBool:(BOOL)defaultBool
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	
	id result = [userDefaults objectForKey:key];
    if ([result isKindOfClass:[NSNumber class]]) return [result boolValue];

	return defaultBool;
}

/**
 should write to value BOOL type
 @param BOOL: value
 @param NSString: key
 @return BOOL:success or fail
 */
+ (BOOL)setBool:(BOOL)value forKey:(NSString *)key
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:@(value) forKey:key];
	
	return [userDefaults synchronize];
}

#pragma -
#pragma NSInteger
/**
 should read to value NSInteger type
 @param NSString: key
 @param NSUInteger: Default value
 @return NSUInteger read value
 */
+ (NSInteger)integerForKey:(NSString *)key defaultInteger:(NSInteger)defaultInteger
{
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	
    id result = [userDefaults objectForKey:key];
	if ([result isKindOfClass:[NSNumber class]]) return [result intValue];
	
	return defaultInteger;
}

/**
 should write to value NSInteger type
 @param NSInteger: value
 @param NSString: key
 @return BOOL:success or fail
 */
+ (BOOL)setInteger:(NSInteger)value forKey:(NSString *)key
{
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:@(value) forKey:key];
	
	return [userDefaults synchronize];
}

#pragma mark -
#pragma mark float
/**
 should read to value float type
 @param NSString: key
 @param float: Default value
 @return float read value
 */
+ (float)floatForKey:(NSString *)key defaultFloat:(float)defaultFloat
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    
	id result = [userDefaults objectForKey:key];
	if ([result isKindOfClass:[NSNumber class]]) return [result floatValue];
	
	return defaultFloat;
}

/**
 should write to value float type
 @param float: value
 @param NSString: key
 @return BOOL:success or fail
 */
+ (BOOL)setFloat:(float)value forKey:(NSString *)key
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:@(value) forKey:key];
	
	return [userDefaults synchronize];
}

/**
 remove value by key
 @param NSString: key
 @return BOOL: success or fail
 */
+ (BOOL)removeObjectForKey:(NSString *)key
{
	NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:key];
	
	return [userDefaults synchronize];

}

@end
