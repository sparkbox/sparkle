---
title: Delist Mixin
layout: default
order: 2
---
Remove default list styles from `<ol>` and `<ul>` elements. This is a standalone mixin and does not except any parameters.

`@include delist`

Example use of the `delist` mixin:

```scss
.my-class {
  @include delist;
}
```

Sparkle Mixin code:

```scss
@mixin delist {
  margin: 0;
  padding: 0;
  list-style: none;
}
```
