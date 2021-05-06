---
title: Clearfix Mixin
layout: default
order: 2
---
The `clearfix` mixin adds an `::after` pseudo element to clear floating elements. This is a standalone mixin and does not except any parameters.

`@include clearfix`

Example use of the `clearfix` mixin:

```scss
.my-class {
  @include clearfix;
}
```

Sparkle Mixin code:

```scss
@mixin clearfix {
  &::after {
    clear: both;
    content: '';
    display: table;
  }
}
```
