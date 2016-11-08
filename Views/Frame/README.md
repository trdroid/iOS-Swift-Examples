# Frame Property

Views have a *frame* property which indicates the position of a *view* within its superview, in the coordinate system of the superview. 

**Type**

The *frame* property of a view is of type *CGRect*

**Default Value**

The default *frame* value of a *view* is *CGRect.zero*, which makes the view invisible. A view with a *frame* value of *CGRect.zero* does not appear when it is added to a superview. 

**Coordinate System of a Superview**

By default, a superview's coordinate system has the origin at its top-left, with +x towards right and +y downwards. 

### Assigning a *frame* to a *view*

**Using *init(frame:)* of UIView**

When creating a *view* in code, a *frame* can be assigned to it using the UIView's designated initializer *init(frame:)*. The value for the *frame* parameter describes where the *view* will be positioned within its superview, when it is added to a superview.

```swift
let myView = UIView(frame: CGRect(10, 20, 30, 40))
```

### Changing the *frame* of a *view*

Assigning a different *frame* to a *view* does any of the following depending on the new *frame* value assigned

* repositions the view in the superview (or)
* resizes the view (or)
* both

When the *frame* of a *visible view* is reassigned a new value, the transformations are visibly reflected in the interface.





