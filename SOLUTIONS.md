#Solutions

Checkout master to see how I approached these auto layout problems. There's usually more than one way to do things, so if your solution is different to mine I'd love to hear about it so I can improve this workshop for next time!

##Profile

**The profile picture should always be square.**  
Create an aspect ratio constraint on the image view with multiplier 1:1 (or 1).

**The profile picture should take up 1/3 of the screen width. Name, location and blurb should fill the remaining 2/3 of the screen width.**  
Put the 3 labels inside a container view. Add an Equal Widths constraint between the image view and the label container view with a multiplier of 0.5 (making the image view half the width of the label container view).

**The profile picture should be centred vertically with the text to its right, unless the text is too tall for the picture in which case the image should be aligned to the top of the text.**  

1. Embed the image view and the view containing the 3 labels (from now on referred to as "label container") inside another UIView
2. Vertically align the image view and the label container by creating a Center Y constraint with a high priority (750)
3. Constrain the top of the label container to the top of its container view (from step 1) with constant >= 0 and required priority (1000)
4. Constrain the bottom of the label container to the bottom of its container view with constant >=0 and required priority (1000)
5. Constrain the image view to the top of its container view with required priority (1000)
6. Constrain the image view to the bottom of its container view with a high priority (750)

**The social icons should be evenly spaced across the full width of the screen.**  
Add spacer views between each button with Equal Widths constraints. (I'm looking forward to iOS 9's UIStackView and UILayoutGuide!)

**The name of the cafe should truncate if too long, but the date should never truncate.**  

1. Constrain the trailing edge of the cafe name label to the leading edge of the date label with constant >= standard spacing
2. Give the cafe name label a lower horizontal compression resistance priority than the date label
3. (Optional) Give the date label a higher horizontal content hugging priority than the cafe name label

**The text field should fill the available width.**  
Give the Send button a higher horizontal content hugging priority than the text field.

## Choose Recent Photo

**All 12 images should be constrained to the edges of their superview and each other.**  
Select the 12 images and then use the Pin tool to add all 53 constraints and update frames in one go (see below screenshot).

![Choose Recent Photo constraints](Screenshots/ChoosePhotoConstraints.png?raw=true)

##Take Photo

**The camera guidelines should always be square and centred.**

1. Create an aspect ratio constraint on the image view with multiplier 1:1
2. Embed the camera guidelines in a container view (Editor > Embed In > View) and constrain the container view to its nearest neighbor on all sides
3. Align camera guidelines vertically and horizontally in superview
4. Constrain leading and trailing space to superview with constant >= 10 and required priority (1000)
5. Constrain top and bottom space to superview with constant = 10 and high priority (750)
