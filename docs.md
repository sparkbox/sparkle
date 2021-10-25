
# Sparkle Sass
Our source Sass files provide mixins, utiltities, and more. Below you can find details on the following:

|                                                 |
|-------------------------------------------------|
| [File structure](#file-structure)               |
| [Sparkle Settings](#sparkle-settings)           |
| [Importing](#importing)                         |
| [Testing](#adding-sass-unit-tests)              |

<br />

## File Structure

Avoid modifying Sparkle’s core files. You will create your own Sass stylesheet that imports Sparkle so you can modify, overwrite, or extend it. Once Sparkle is installed your file structure should look something like this:

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
    'prefix': 'sparkle',
    'loop-mq': true,
    'print-classes': true,
    'system-color': true,
    'system-grid': true,
    'system-spacing': true,
    'system-font-family': true,
    'system-font-size': true,
    'system-font-weight': true,
    'utility-margin': true,
    'utility-padding': true,
    'utility-position-spacing': true,
    'utility-background-color': true,
    'utility-border-color': true,
    'utility-border-width': true,
    'utility-border-position': true,
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

<br />

## Importing

In your `custom.scss`, you’ll import Sparkle’s source Sass files above your own files, that way, Sparkle's default settings could be overwritten. 

Here's how to import Sparkle:

```
// custom.scss
//  Import all of Sparkle's settings at the top of each of all of your sass file imports.

// Settings
@import '../../node_modules/@sparkbox/sparkle/settings';
@import 'import-sparkle-settings';
@import 'your-settings';

// Tools
@import '../../node_modules/@sparkbox/sparkle/tools';
@import 'your-tools';

// Utilities 
@import 'your-utilities';
@import '../../node_modules/@sparkbox/sparkle/utilities';
```

Once this is setup, you can modify the Sass variables and maps in your own custom scss. 
<br />

## Adding Sass Unit Tests

1. Create a `_test.scss` file in the corresponding folder. 
    *Note* Each folder with mixins, functions, and utilities should have a corresponding `_test.scss` file. 
2. Import True (`@import 'true'`) and the sass file you are testing at the top of this new `_test.scss` file. 
3. Ensure that this `_test.scss` file is being imported into the main `test/test.scss` file.
4. To test, run `npm test`
