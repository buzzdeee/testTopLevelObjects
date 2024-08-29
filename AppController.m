/* 
   Project: Test5

   Author: Sebastian Reitenbach

   Created: 2024-08-29 09:04:46 +0200 by sebastia
   
   Application Controller
*/

#import "AppController.h"

@implementation AppController

+ (void) initialize
{
  NSMutableDictionary *defaults = [NSMutableDictionary dictionary];

  /*
   * Register your app's defaults here by adding objects to the
   * dictionary, eg
   *
   * [defaults setObject:anObject forKey:keyForThatObject];
   *
   */
  
  [[NSUserDefaults standardUserDefaults] registerDefaults: defaults];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id) init
{
  if ((self = [super init]))
    {
    }
  return self;
}

- (void) dealloc
{
  [super dealloc];
}

- (void) awakeFromNib
{
}

- (void) applicationDidFinishLaunching: (NSNotification *)aNotif
{

    NSLog(@"here in AppController  applicationDidFinishLaunching...");

  NSBundle *mainBundle = [NSBundle mainBundle];
  NSArray *topLevelObjects = nil;
  NSLog(@"going to load .gorm file");
  BOOL success = [mainBundle loadNibNamed:@"Test5" owner:self topLevelObjects:&topLevelObjects];  
  NSLog(@"topLevelObjects: %@", topLevelObjects);
    if (success) {
        NSLog(@"Successfully loaded Test5.gorm");
        
        if (topLevelObjects == nil || [topLevelObjects count] == 0) {
            NSLog(@"No top-level objects were loaded.");
        } else {
            NSLog(@"Top-level objects: %@", topLevelObjects);
            for (id obj in topLevelObjects) {
                NSLog(@"Loaded object: %@", NSStringFromClass([obj class]));
            }
        }
    } else {
        NSLog(@"Failed to load Test5.gorm");
    } 

}

- (BOOL) applicationShouldTerminate: (id)sender
{
  return YES;
}

- (void) applicationWillTerminate: (NSNotification *)aNotif
{
}

- (BOOL) application: (NSApplication *)application
	    openFile: (NSString *)fileName
{
  return NO;
}

- (void) showPrefPanel: (id)sender
{
}

@end
