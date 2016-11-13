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

