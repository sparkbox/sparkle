✨ Sparkle CSS Framework
=====================

**A highly customizable utility-based CSS Framework**

From your friends at [Sparkbox](https://seesparkbox.com).

## Creating a Sparkle Sub-System

- Default Sass Map with at least three example values.
- A function to access the map. 
- A value added to the settings map to enable/disable the utility classes. 
- Utility classes that meet this criteria:
    - A check for if the utility class is enabled/disabled.
    - Utility classes should be written to accept a namepspace. 
    - Utility classes should be written to loop through all of the values in the map. 
    - Loop includes media query prefixes for the class to be called at certain breakpoints. 
- Write test to check the function and class names.
- Write documentation that can be configurable to the settings. 


## Mixins

- Visually-hidden
- Unbuttonize
- Delist
- Delink
- Loop-mq 
- Antialiased
- Clearfix


## Funcitons

- Map Getters (A system map retreiver)
- SVG Encoder 
- Strip-Unit
- Negative
- Ratio
- Stringify
- Remify
- String Replace


## Systems 

- Spacing
    - Padding
    - Margin
    - Postion
- Color
    - Foreground
    - Background
    - Border
- Grid
- Font 
    - Family
    - Size
    - Weight
- Border
- Order
- Z-Index
- Breakpoints and Print


## Utilities

- Display
- Flex
- Text Alignment
- Position
- Font Style
- Grid 


## Adding a Sass Unit Test

1. Create a `_test.scss` file in the corresponding folder. 
    *Note* Each folder with mixins, functions, and utilities should come with a corresponding `_test.scss` file. 
2. Import True (`@import 'true'`) and sass file that would like to test at the top of this `_test.scss` file. 
3. Ensure that this `_test.scss` file is being imported into the main `test/test.scss` file.