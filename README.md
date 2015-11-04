# iOS Application Programming with Swift

### Launch Screen

Launch Screen is the screen that the user sees when an application is being loaded. 

An app could be supplied with a set of images (for different iPhones) which acts as an app's launch screen. 
In fact, this is the only option available prior to iOS 8.

With iOS 8, a launch file (<b>*LaunchScreen.xib*</b>) can be provided as a launch screen and is preferred over images. 

A launch file is nib file or storyboard that contains the UI for the launch screen. 

NOTE: Both the launch file and launch images should be supplied if the app supports earlier releases. In iOS 8, if the application contains a launch file, it is used in preference to images. 

### Designing the icon

Create an icon of the following sizes (in pixels) for better results

* 180 x 180 
* 120 x 120 
* 87 x 87
* 80 x 80
* 58 x 58

<b>*Why are 5 different icon sizes required?*</b>

These icons account for all versions of iPhones including iPhone 6 Plus and are used on the iPhone home screen, 
in the Settings app and in Spotlight search results.

If some of the smaller icons are not provided, a larger one will be scaled down appropriately at runtime.
To avoid this runtime penalty, scale the icons in advance and provide the aforementioned sizes.

<b>*What format should the icon images be in?*</b>

Prefer png over other formats, as Xcode automatically optimizes images of type .png at build time making them the most 
efficient and fastest over other formats.

Icons are saved in an asset catalog called <b>Images.xcassets</b> along with other images of the app. 

### AppIcon boxes

![](https://github.com/konceptsandcode/iOS-Swift/blob/master/HelloWorld/Snapshots/AppIcons.png)

Xcode displays the sizes of the icons in Points. 

> Size in Pixels = Points x Scale

| Points        | Pixels        | Phones  |
| ------------- |:-------------:| -----:|
| 1             | 1             | < iPhone 4 |
| 1             | 2 x 2         |   Retina Displays except iPhone 6 Plus |
| 1             | 3 x 3         |   iPhone 6 Plus |


