# Adaptive Layout

### Handling UI on Orientations

When the orientation of a device changes, the dimensions of the screen are interchanged, so the area in which the GUI components are laid out changes. 

iOS 6 introduced *constraints* that can be defined on GUI components to **reposition** and **resize** them when

* The parent/enclosing view resizes (or)
* Other views are repositioned or resized

### Constraints

Constraints decide how the controls behave when their enclosing view resizes. Constraints can be configured in

* Interface Builder
* Programmatically in code

The iOS View System considers the constraints as equations of view geometry and rearranges the configured GUI components accordingly to make those equations true. 

