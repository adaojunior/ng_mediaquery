# ng_mediaquery

> Inspired by [iron-media-query](https://elements.polymer-project.org/elements/iron-media-query)


A angular 2 directive that can be used to data bind to a CSS media query.


## How to use

The `query` property is a CSS media query, learn more about them [here](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries).
The `matches` property is a boolean representing whether the page matches that media query.

```
<media-query query="(max-width : 768px)" [(matches)]="isSmallDevice"></media-query>

<div *ngIf="isSmallDevice">
   Some awesome content for small devices
</div>
```

> **isSmallDevice** must be a property in your controller.
> When running on Dartium *ngIf may complain if isSmallDevice is null, you can solve that but setting a non-null value to it, it will be updated as soon as media-query gets its first result.
