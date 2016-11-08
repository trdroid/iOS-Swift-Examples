# Views

Views can be instantiated

* by loading them from a *nib* file (or)
* programmatically in code

### View Hierarchy

Views are organized into *view hierarchy*, which is a tree of views.

**Subviews**

A view can have many subviews, but a subview can have ONLY one immediate superview. 

**Operations**

A few of the operations that can be performed on a view are

* removing from the interface
* hiding in the interface
* moving in the interface

**NOTE**: Any operation performed to a superview applies to all of its subviews.

If a superview is 

* removed, then all of its subviews are removed from the interface
* hidden, then all of its subviews are hidden in the interface
* moved, then all of its subviews are moved in the interface

**Responder Chain**

The *view hierarchy* is the basis of how the responder chain functions. 

### The App Window

The App Window is the *view* at the top of the *view hierarchy* and it is therefore the superview of all other views in the app. 
It forms the background to all other views in the app. 

**Type**

The App Window is an instance of *UIWindow* or *AnyCustomUIWindowSubClass*

* *UIView* <- *UIWindow*
* *UIView* <- *UIWindow* <- *AnyCustomUIWindowSubClass*

**Number of App Windows**

The number of App Windows allowed are equal to the number of screens that an app intendes to display its views on. 

If an app is intended to display views ONLY to the screen of the device that it runs on, the app can have ONLY ONE App Window.

If an app is intended to display views on an external screen, then the app can contain additional App Window to contain those views.

### App Window Creation

If the app uses a main storyboard, the following steps take place behind the screens to create, populate and display the App Window.

1] The app is automatically set up to call the *UIApplicationMain()* function.

2] The *UIApplicationMain()* function instantiates and retains the following instances

* an instance of *UIApplication* that can be used as the shared application instance, which can be referred to in code as *UIApplication.shared*
* an instance of the app delegate class which is then assigned as the application instance's *delegate*. The app delegate class is identified by its annotation *@UIApplicationMain*

3] The *UIApplicationMain()* function checks to see if the app uses a main storyboard by looking at the value of the following key/property in *Info.plist*

* *Main storyboard file base name*

4] If the *UIApplicationMain()* function determines that the app uses a main storyboard, it 

* Inquires the app delegate instance for the value of its *window* property. 
* If the value is *nil*, instantiates the *UIWindow*
* If the value is not *nil*, considers that instance. The valud is not *nil* in the case when the user explicitly returns an instance of a custom subclass of *UIWindow*.
* Assigns the instance (*UIWindow* or *AnyCustomUIWindowSubClass*) to the app delegate instance's *window* property. The app delegate instance's *window* property retains the instance of the App Window assigned to it to ensure that the App Window persists for the lifetime of the app.
* Sets the App Window's frame to the bounds of the screen to make the App Window fill the device's screen
* Instantiates the initial view controller of the main storyboard
* Assigns the view controller instance to the App Window instance's *rootViewController* property, which sets the view of the view controller as the *root view* of the App Window.

5] The *UIApplicationMain()* function calls *application(_:didFinishLaunchingWithOptions:)* method on the app delegate's instance.

6] The *UIApplicationMain()* function calls *makeKeyAndVisible* method on the App Window's instance to make the App Window the key window of the app. The App Window contains the interface of the app which is not visible until the App Window is made the key window of the app. 

***root view* of App Window**

When the view controller instance is assigned to the App Window instance's *rootViewController* property, the view of the view controller is made the immediate subview of the App Window, which is referred to as the App Window's *root view*. 

The *root view* is the top most *view* in the *view hierarchy* that the user usually sees.

*Setting background color for the App Window*

The App Window might be visible under certain circumstances before the user can see the *root view*, so assigning the App Window a decent background color is conventional.









