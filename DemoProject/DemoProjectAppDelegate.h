//
//  DemoProjectAppDelegate.h
//  DemoProject
//
//  Created by verve on 31/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoProjectViewController;

@interface DemoProjectAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet DemoProjectViewController *viewController;

@end
