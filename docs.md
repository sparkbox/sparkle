
# Sparkle Sass
Our source Sass files provide mixins, utiltities, and more. Below you can find details on the following:

|                                                 |
|-------------------------------------------------|
| [File structure](#file-structure)               |
| [Sparkle Settings](#sparkle-settings)           |
| [Importing](#importing)                         |
| [Spacing Classes](#spacing-classes)             |
| [Margin](#margin)                               |
| [Testing](#adding-sass-unit-tests)              |

<br />

## File Structure

Avoid modifying Sparkles’s core files. You will create your own Sass stylesheet that imports Sparkle so you can modify, overwrite, or extend it. Once Sparkle is installed your file structure should look something like this:

```
your-project/
├── scss
│   └── custom.scss
└── node_modules/
    └── sparkle/
        ├── globals/
        └── systems/
        └── test/
        └── tools/
        └── utilities/
        └── _sparkle-defaults.scss
        └── _sparkle-settings.scss
        └── _settings.scss
        └── _tools.scss
        └── _utilities.scss
        └── package.json
```

If you want to download our source files instead, you want to make sure that you keep Sparkle’s source files separate from your own.

```
your-project/
├── scss
│   └── custom.scss
└── sparkle/
    ├── globals/
    └── systems/
    └── test/
    └── tools/
    └── utilities/
    └── _sparkle-defaults.scss
    └── _sparkle-settings.scss
    └── _settings.scss
    └── _tools.scss
    └── _utilities.scss
    └── package.json
```
<br />

## Sparkle Settings

Create a new file. Copy and paste the following map into this file to configure your own settings based your projects need.

```
//_your-settings-config.scss

$settings: map-merge(
    $settings, 
    (
    'prefix': 'test',
    'loop-mq': true,
    'print-classes': true,
    'utility-background-color': true,
    'utility-border-color': true,
    'utility-foreground-color': true,
    'utility-outline-color': true,
    'utility-text-decoration-color': true,
    'utility-z-index': true,
    'utility-display': true,
    'utility-position': true,
    'utility-text-align': true,
    'utility-visually-hidden': true
    )
);

```

| Setting                           | Description             |
|-----------------------------------|-------------------------|
| prefix                            |                         |
| loop-mq                           |                         |
| print-classes                     |                         |
| utility-background-color          |                         |
| utility-border-color              |                         |
| utility-foreground-color          |                         |
| utility-outline-color             |                         |
| utility-text-decoration-color     |                         |
| utility-z-index                   |                         |
| utility-display                   |                         |
| utility-position                  |                         |
| utility-text-align                |                         |
| utility-visually-hidden           |                         |

<br />

## Importing

In your `custom.scss`, you’ll import Sparkles’s source Sass files above your own files, that way, Sparkle's default settings could be overwritten. 

There are a few ways to go about importing.

### Option A: Include all of Sparkle Settings
```
// custom.scss
//  Import all of Sparkle's Settings at the top of where you import all of your sass files.

@import "../node_modules/sparkle/docs";
```

### Option B: Include parts of Sparkle's Settings

```
// custom.scss

// These files are required.
//They should be included at the top of where you import all of your sass files.  
@import "../node_modules/sparkle/globals/media-queries/map";
@import "../node_modules/sparkle/globals/sides/map";
@import "../node_modules/sparkle/globals/spacing/map";

// These files are optional
@import "../node_modules/sparkle/systems/border/utility";
@import "../node_modules/sparkle/systems/margin/utility";
@import "../node_modules/sparkle/systems/padding/utility";
@import "../node_modules/sparkle/systems/position/utility";
@import "../node_modules/sparkle/systems/color/foreground/utility";
@import "../node_modules/sparkle/systems/color/background/utility";
@import "../node_modules/sparkle/systems/color/border/utility";
@import "../node_modules/sparkle/systems/color/outline/utility";
@import "../node_modules/sparkle/systems/color/text-decoration/utility";
@import "../node_modules/sparkle/systems/z-index/utility";
@import "../node_modules/sparkle/utilities/display/utility";
@import "../node_modules/sparkle/utilities/position/utility";
@import "../node_modules/sparkle/utilities/text-align/utility";
@import "../node_modules/sparkle/utilities/visually-hidden/utility";
@import "../node_modules/sparkle/systems/border/map";
@import "../node_modules/sparkle/systems/color/map";
@import "../node_modules/sparkle/systems/z-index/map";
@import "../node_modules/sparkle/utilities/display/map";
@import "../node_modules/sparkle/utilities/position/map";
@import "../node_modules/sparkle/utilities/text-align/map";
```

Once this is setup, you can modify the Sass variables and maps in your own custom scss. 
<br />

## Spacing Classes

All spacing classes follow a similar format: `.[prefix]-[property]-[side]-[amount]`.

| Class Section | Options                                                            | Description |
|---------------|--------------------------------------------------------------------|-------------|
| [property]    | `margin`                                                           | This defines which spacing property to utilize, either margin for a margin property or pad for a padding property                                                                                                                                                                                                                                              |
| [side]        | `all`, `vert`, `horiz`, `top` ,`bottom`, `left`, `right`           | The side options are which side of the box to place the spacing amount. For a combined top and bottom value, use `vert`, for a combined right and left value use `horiz`. To apply the same value to all sides use all.                                                                                                                                            |
| [amount]      | `none`, `sm`, `md`, `lg`, `xl`                                     | The amount of spacing is a lettered value for a multiplier of the base spacer value. By default the base spacer value is `1rem`, this is the amount use on the `xs` amount. To use a zero value spacing use the amount none.     |
| [breakpoint]  | `@sm`, `@md`, `@lg`, `@xl`                                         | An optional section can be added to the end of the class to indicate a breakpoint value (`.util-[property]-[side]-[amount]-@[breakpoint]`). For example, if you want a div to change from having small padding to a large padding at a specific breakpoint, this class section can be used to do just that: `<div class="util-pad-all-sm util-pad-all-md@lg">` |

## Margin
| Class                      | Description                                                             |
|----------------------------|-------------------------------------------------------------------------|
| .`util-margin-bottom-none` | Removes margin from the bottom of an element.                           |
| .`util-margin-bottom-xs`   | Adds an extra small amount of margin to the bottom of an element.       |
| .`util-margin-bottom-sm`   | Adds a small amount of margin to the bottom of an element.              |
| .`util-margin-bottom-md`   | Adds a medium amount of margin to the bottom of an element.             |
| .`util-margin-bottom-lg`   | Adds a large amount of margin to the bottom of an element.              |
| .`util-margin-bottom-xl`   | Adds an extra large amount of margin to the bottom of an element.       |
| .`util-margin-bottom-xxl`  | Adds an extra extra large amount of margin to the bottom of an element. |
| .`util-margin-top-none`    | Removes margin from the top of an element.                              |
| .`util-margin-top-xs`      | Adds an extra small amount of margin to the top of an element.          |
| .`util-margin-top-sm`      | Adds a small amount of margin to the top of an element.                 |
| .`util-margin-top-md`      | Adds a medium amount of margin to the top of an element.                |
| .`util-margin-top-lg`      | Adds a large amount of margin to the top of an element.                 |
| .`util-margin-top-xl`      | Adds an extra large amount of margin to the top of an element.          |
| .`util-margin-top-xxl`     | Adds an extra extra large amount of margin to the top of an element.    |
<br />

## Adding Sass Unit Tests

1. Create a `_test.scss` file in the corresponding folder. 
    *Note* Each folder with mixins, functions, and utilities should have a corresponding `_test.scss` file. 
2. Import True (`@import 'true'`) and the sass file you are testing at the top of this new `_test.scss` file. 
3. Ensure that this `_test.scss` file is being imported into the main `test/test.scss` file.
4. To test, run `npm test`
