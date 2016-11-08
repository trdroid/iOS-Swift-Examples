# Bounds Property

The *bounds* property of a *view* describes the *view's* rectangle in its own coordinates, but NOT in its *superview's* coordinates.

**Type**

The *bounds* property of a *view* is of type *CGRect*. 


```swift
let superView1 = UIView(frame: CGRect(10, 20, 30, 40))
superview1.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)

let insetView = UIView(frame: superView1.bounds.insetBy(dx: 5, dy: 5))
insetView.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0, alpha: 1)

superView1.addSubview(insetView)
```
