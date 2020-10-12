✨ Sparkle CSS Framework
=====================

**A highly customizable utility-based CSS Framework**

From your friends at [Sparkbox](https://seesparkbox.com).

## Spin Up the Sparkle Styleguide in a Browser
1. From the root, run `npm run docs` to create the styleguide directory
1. Navigate to the directory `cd styleguide`
1. Run `python -m SimpleHTTPServer 3000` to spin up the project locally
1. Navigate to localhost:3000 in your browser

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


## Functions

- Map Getters (A system map retreiver)
- Strip-Unit
- Negative
- Ratio
- Stringify
- Remify


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



| Sass Documentation                              |
|-------------------------------------------------|
| [File structure](docs.md#file-structure)        |
| [Sparkle Settings](docs.md#sparkle-settings)    |
| [Importing](docs.md#importing)                  |
| [Testing](docs.md#adding-sass-unit-tests)       |
