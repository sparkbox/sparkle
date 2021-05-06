---
title: Anti-Alias Mixin
layout: default
order: 2
---
Adds font smoothing properties to the text content of an element. This is a standalone mixin and does not except any parameters.

`@include antialiased`

Example use of the `antialiased` mixin:

```scss
.my-class {
  @include antialiased;
}
```

Sparkle Mixin code:

```scss
@mixin antialiased {
  -moz-osx-font-smoothing: antialiased;
  -webkit-font-smoothing: antialiased;
}
```
