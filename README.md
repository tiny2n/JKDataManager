JKDataManager
=============

Data Manager using NSUserDefaults

### Features

### Installation
Add the files to your project manually by dragging the NYSegmentedControl directory into your Xcode project.

### Usage

```
// Import the class
#import "JKDataManager.h"

// ...

// ---------------------------------------------------
// ex) write value
// ---------------------------------------------------
NSString * str = @"STR";
[JKDataManager setString:str forKey:@"STRING"];
[JKDataManager setFloat:1.5f forKey:@"FLOAT"];
[JKDataManager setBool:YES forKey:@"BOOL"];

// ---------------------------------------------------
// ex) read value
// when key doesn't exist, return default value
// ---------------------------------------------------
NSString * valStr  = [JKDataManager stringForKey:@"STRING" defaultString:@"-"];
float      valFloat= [JKDataManager floatForKey:@"FLOAT"   defaultFloat:0.0f];
BOOL       valBool = [JKDataManager floatForKey:@"BOOL"    defaultFloat:NO];
id         valObj  = [JKDataManager objectForKey:@"OBJECT" defaultObject:nil];
NSInteger  valInt  = [JKDataManager floatForKey:@"INTEGER" defaultFloat:-2];

NSLog(@">>> string value < %@ >", valStr);
NSLog(@">>> string value < %f >", valFloat);
NSLog(@">>> string value < %@ >", (valBool ? @"YES" : @"NO"));
NSLog(@">>> string value < %@ >", valObj);
NSLog(@">>> string value < %d >", valInt);
```
