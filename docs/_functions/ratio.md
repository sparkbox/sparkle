---
title: Ratio Function
layout: default
order: 2
---
Creates a ratio percentage value when given a height value and width value.

```scss
.my-class {
  prop: ratio(<height>, <width>);
}
```

**Example Sass**
```scss
.my-class {
  width: ratio(200, 400);
}
```

**Example CSS Output**
```css
.my-class {
  width: 50%;
}
```
