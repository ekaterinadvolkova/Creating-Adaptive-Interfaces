# Creating Adaptive Interfcae in the Interface Builder

### Task 1

[__Walkthrough on YouTube__](https://www.youtube.com/watch?v=6A5tpWbPJfU)

* Create authorization screen
* The source project has a ```Do not change folder```, the files  need no change. 
* In the AppDelegate there is a ```RoundViewExtension```, which adds to any object of this or a child class the ability to draw a frame as a circle with specified color and line thickness. The radius of the circle is half the smallest size of the view (width or height), and the center of the circle is the same as the center of the view itself. 
* ```RoundButton``` is a child class of UIButton, which creates a "round" button according to the algorithm described above. The color of the frame is darkText, and the thickness of the frame is 1pt. This class is used as a Custom Class in Interface Builder to create a keyboard button in the first task.
* ```RoundView```, a child class of UIView, creates a "round" view with the same parameters. Use this class in Interface Builder to create a view that displays the number of characters entered in the first task.

* The application should support both portrait and landscape orientations. 
* The view showing the number of characters entered, the Enter passcode text and the center column of the numeric keypad (buttons 2, 5, 8, 0 in portrait orientation or buttons 3, 8 in landscape orientation) must be centered horizontally.

* The digit 5 in portrait orientation must be vertically shifted upward from the center of the screen by 36pt.

* The number 3 in landscape orientation should be vertically offset upward from the center of the screen by 25pt.

* Enter Passcode text - System font 17, color - black, text alignment - center, number of lines - 1.

* Delete - System font 25, color - black.

* Numeric keypad items - System font 45, color - dark text.

* All other parameters (colors, fonts, etc.) are default.

### Screens

<img src="https://media.github.bus.zalan.do/user/10996/files/dc344844-4146-4729-9709-50e06b1c9a41" height = 400, width = 230> <img src="https://media.github.bus.zalan.do/user/10996/files/fbf24567-219e-4f06-8062-d2bc0facae6a" height = 230, width = 400>

### Task 2

[__Walkthrough on YouTube__](https://www.youtube.com/watch?v=tN0EFUjMUPM&t=33s)
* Create a music playing screen

* The ````UIImageView```` to display the photo must have an aspect ratio of 1:1 and ````contentMode```` = ````scaleAspectFill````.

* The ````UIImageView```` must be centered horizontally with respect to the main view (for portrait orientation)

* ````ProgressView```` and ````UISlider```` must have slider start values equal to 0.5.
* ````The UILabel```` displaying the band name and song should have System font 22, weight - medium, color - black, text alignment - center, number of lines - 1.
* The name label is centered horizontally with respect to the main view (for portrait orientation).
* The distance between the title label and ProgressView must be the same as the distance between the label and the UISlider.
* All other parameters (colors, fonts, etc.) are default. 

### Screens
<img src="https://media.github.bus.zalan.do/user/10996/files/96b4f00d-56b2-4408-894b-43610328a1e6" height = 400, width = 250> <img src="https://media.github.bus.zalan.do/user/10996/files/479260ae-e57b-44c4-823a-e5189b7e67cf" height = 240, width = 400>

