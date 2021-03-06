/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceAttachment
 *
 */
@implementation MSGraphServiceAttachment


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"lastModifiedDateTime", @"lastModifiedDateTime", @"name", @"name", @"contentType", @"contentType", @"size", @"size", @"isInline", @"isInline", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.attachment";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_lastModifiedDateTime = (![dic objectForKey: @"lastModifiedDateTime"] || [ [dic objectForKey: @"lastModifiedDateTime"] isKindOfClass:[NSNull class]] )?_lastModifiedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"lastModifiedDateTime"]];
		_name = (![dic objectForKey: @"name"] || [ [dic objectForKey: @"name"] isKindOfClass:[NSNull class]] )?_name:[[dic objectForKey: @"name"] copy];
		_contentType = (![dic objectForKey: @"contentType"] || [ [dic objectForKey: @"contentType"] isKindOfClass:[NSNull class]] )?_contentType:[[dic objectForKey: @"contentType"] copy];
		_size = (![dic objectForKey: @"size"] || [ [dic objectForKey: @"size"] isKindOfClass:[NSNull class]] )?_size:[[dic objectForKey: @"size"] intValue];
		_isInline = (![dic objectForKey: @"isInline"] || [ [dic objectForKey: @"isInline"] isKindOfClass:[NSNull class]] )?_isInline:[[dic objectForKey: @"isInline"] boolValue];
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedDateTime"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"name"];}
	{id curVal = [self.contentType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"contentType"];}
	{[dic setValue: [NSNumber numberWithInt: self.size] forKey: @"size"];}
	{[dic setValue: (self.isInline?@"true":@"false") forKey: @"isInline"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.attachment" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"lastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"lastModifiedDateTime"];
            }
    }
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"name"];
            }
    }
	{id curVal = self.contentType;
    if([self.updatedValues containsObject:@"contentType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"contentType"];
            }
    }
 if([self.updatedValues containsObject:@"size"])
            { [dic setValue: [NSNumber numberWithInt: self.size] forKey: @"size"];
} if([self.updatedValues containsObject:@"isInline"])
            { [dic setValue: (self.isInline?@"true":@"false") forKey: @"isInline"];
}	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property lastModifiedDateTime
 *
 */
- (void) setLastModifiedDateTime: (NSDate *) value {
    _lastModifiedDateTime = value;
    [self valueChangedFor:@"lastModifiedDateTime"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property contentType
 *
 */
- (void) setContentType: (NSString *) value {
    _contentType = value;
    [self valueChangedFor:@"contentType"];
}
       
/** Setter implementation for property size
 *
 */
- (void) setSize: (int) value {
    _size = value;
    [self valueChangedFor:@"size"];
}
       
/** Setter implementation for property isInline
 *
 */
- (void) setIsInline: (bool) value {
    _isInline = value;
    [self valueChangedFor:@"isInline"];
}
       

@end
