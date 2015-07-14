#Auto Layout Workshop

##Instructions

1. Fork the repo and checkout the **starter-project branch**
2. Open Main.storyboard where you'll find 3 views that need laying out (Profile, Choose Recent Photo and Take Photo).
3. Add constraints to each of these views to match the criteria and screenshots below.

##Profile

- The profile picture should always be square.
- The profile picture should take up 1/3 of the screen width. Name, location and blurb should fill the remaining 2/3 of the screen width.
- The profile picture should be centred vertically with the text to its right, unless the text is too tall for the picture in which case the image should be aligned to the top of the text. (In the screenshots below, the profile image and text are centred vertically on the iPhone 6 Plus, but on the iPhone 4S the image is aligned to the top.)
- The social icons should be evenly spaced across the full width of the screen.
- The name of the cafe should truncate if too long, but the date should never truncate.
- The text field should fill the available width.

![Profile screenshot](Screenshots/Profile.png?raw=true)

## Choose Recent Photo

- All 12 images should be constrained to the edges of their superview and each other.
- Hint: this screen should take you under 30 seconds to complete.

![Choose Recent Photo screenshot](Screenshots/ChoosePhoto.png?raw=true)

##Take Photo

- The bottom tool bar should have a height constraint equal to 90.
- The camera guidelines should always be square and centred. On short screens (e.g. iPhone 4S) the guidelines have more space on the left and right sides, on tall screens (e.g. iPhone 6 Plus) there is more space above and below the guidelines.

![Take Photo screenshot](Screenshots/TakePhoto.png?raw=true)
