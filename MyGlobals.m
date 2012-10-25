//
//  MyGlobals.m
//  SafeExamBrowser
//
//  Created by Daniel R. Schneider on 13.10.11.
//  Copyright (c) 2010-2012 Daniel R. Schneider, ETH Zurich, 
//  Educational Development and Technology (LET), 
//  based on the original idea of Safe Exam Browser 
//  by Stefan Schneider, University of Giessen
//  Project concept: Thomas Piendl, Daniel R. Schneider, 
//  Dirk Bauer, Karsten Burger, Marco Lehre, 
//  Brigitte Schmucki, Oliver Rahs. French localization: Nicolas Dunand
//
//  ``The contents of this file are subject to the Mozilla Public License
//  Version 1.1 (the "License"); you may not use this file except in
//  compliance with the License. You may obtain a copy of the License at
//  http://www.mozilla.org/MPL/
//  
//  Software distributed under the License is distributed on an "AS IS"
//  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
//  License for the specific language governing rights and limitations
//  under the License.
//  
//  The Original Code is Safe Exam Browser for Mac OS X.
//  
//  The Initial Developer of the Original Code is Daniel R. Schneider.
//  Portions created by Daniel R. Schneider are Copyright 
//  (C) 2010-2012 Daniel R. Schneider, ETH Zurich, Educational Development
//  and Technology (LET), based on the original idea of Safe Exam Browser 
//  by Stefan Schneider, University of Giessen. All Rights Reserved.
//  
//  Contributor(s): ______________________________________.
//

#import "MyGlobals.h"
#import "SynthesizeSingleton.h"


@implementation MyGlobals

SYNTHESIZE_SINGLETON_FOR_CLASS(MyGlobals);

@synthesize mainBrowserWindow;  //create getter and setter for main browser window
@synthesize currentMainHost;    //current host
@synthesize downloadPath;       //paths of previously downloaded files
@synthesize lastDownloadPath;   //index of the last accessed download path
@synthesize pasteboardString;       //string saved from pasteboard at application start
@synthesize presentationOptions;
@synthesize flashChangedPresentationOptions;


// Read Info.plist values from bundle
- (id)infoValueForKey:(NSString*)key
{
    if ([[[NSBundle mainBundle] localizedInfoDictionary] objectForKey:key])
        return [[[NSBundle mainBundle] localizedInfoDictionary] objectForKey:key];
	
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:key];
}


@end
