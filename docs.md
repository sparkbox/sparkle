
# Sparkle Sass
Our source Sass files provide mixins, utiltities, and more. Below you can find details on the following:

|                                                 |
|-------------------------------------------------|
| [File structure](#file-structure)               |
| [Sparkle Settings](#sparkle-settings)           |
| [Importing](#importing)                         |
| [Testing](#adding-sass-unit-tests)              |


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

If you want to downloaded our source files instead, you want to make sure that you keep Sparkle’s source files separate from your own.

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
@import "../node_modules/systems/border/utility";
@import "../node_modules/systems/margin/utility";
@import "../node_modules/systems/padding/utility";
@import "../node_modules/systems/position/utility";
@import "../node_modules/systems/color/foreground/utility";
@import "../node_modules/systems/color/background/utility";
@import "../node_modules/systems/color/border/utility";
@import "../node_modules/systems/color/outline/utility";
@import "../node_modules/systems/color/text-decoration/utility";
@import "../node_modules/systems/z-index/utility";
@import "../node_modules/utilities/display/utility";
@import "../node_modules/utilities/position/utility";
@import "../node_modules/utilities/text-align/utility";
@import "../node_modules/utilities/visually-hidden/utility";
@import "../node_modules/systems/border/map";
@import "../node_modules/systems/color/map";
@import "../node_modules/systems/z-index/map";
@import "../node_modules/utilities/display/map";
@import "../node_modules/utilities/position/map";
@import "../node_modules/utilities/text-align/map";
```

Once this is setup, you can modify the Sass variables and maps in your own custom scss. 

## Adding Sass Unit Tests

1. Create a `_test.scss` file in the corresponding folder. 
    *Note* Each folder with mixins, functions, and utilities should have a corresponding `_test.scss` file. 
2. Import True (`@import 'true'`) and the sass file you are testing at the top of this new `_test.scss` file. 
3. Ensure that this `_test.scss` file is being imported into the main `test/test.scss` file.
4. To test, run `npm test`
