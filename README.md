JKDataManager
=============

Data Manager using NSUserDefaults


### Installation
Add the files to your project manually by dragging the JKDataManager directory into your Xcode project.


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


License
-------------------------------------------------------
Copyright (c) 2011 JoongKwan Choi  joongkwan.choi@gmail.com

JKLib

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
