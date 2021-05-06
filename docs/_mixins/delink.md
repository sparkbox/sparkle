---
title: Delink Mixin
layout: default
order: 2
---
Remove default link styles from an `<a>` element. This is a standalone mixin and does not except any parameters.

`@include delink`

Example use of the `delink` mixin:

```scss
.my-class {
  @include delink;
}
```

Sparkle Mixin code:

```scss
@mixin delink {
  color: inherit;
  text-decoration: none;
}
```
