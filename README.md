# iOS Application Programming with Swift

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

Icons are saved in an asset catalog called <b>images.xcassets</b> along with other images of the app. 
