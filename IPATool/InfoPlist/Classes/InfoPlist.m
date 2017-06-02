//
//  InfoPlist.m
//  IPATool
//
//  Created by Shuang Wu on 2017/5/31.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "InfoPlist.h"
#import "CLArguments+InfoPlist.h"
#import "InfoPlistReader.h"
#import "InfoPlistEditor.h"

@implementation InfoPlist

+ (id)get:(CLArguments *)arguments {
	InfoPlistReader *reader = [InfoPlistReader readerWithArguments:arguments];
	return [reader read];
}

+ (id)set:(CLArguments *)arguments {
	InfoPlistEditor *editor = [InfoPlistEditor editorWithArguments:arguments];
	return [editor edit];
}

+ (id)getWithPath:(NSString *)path key:(NSString *)key {
	InfoPlistReader *reader = [InfoPlistReader readerWithPath:path key:key];
	return [reader read];
}

+ (id)setWithPath:(NSString *)path key:(NSString *)key value:(NSString *)value type:(NSString *)type pluginEnable:(BOOL)pluginEnable {
	InfoPlistEditor *editor = [InfoPlistEditor editorWIthPath:path key:key value:value type:type pluginEnable:pluginEnable];
	return [editor edit];
}

@end
