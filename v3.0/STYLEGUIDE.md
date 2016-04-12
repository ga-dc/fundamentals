![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png)

# WDI Styleguide
_This is a subset of the [styleguide](https://github.com/generalassembly/wdi/blob/master/curriculum/styleguide.md) we use for the rest of the lessons in our curriculum_

<a name="headings--text"></a>
## Headings & Text

### H1 for Lesson Title

There should be only one in each page / lesson. It should be the first thing in the markdown, and be an H1.

### H3 & UL for Learning Objectives

Learning Objectives are good practice for us to make sure learners are clear about what we're trying to teach, and we stay on track with only the most important pieces of a topic.

The actual objectives should just be an unordered list.

### H2 for Lesson content section titles

The actual content of the lesson is the most important thing, and using H2s gives us nice visual hierarchy for breaking our lesson up into sections.

Use as many sections as you see fit, and try to give them titles that give some hint of what we're about to talk about. They don't have to be catchy or witty (though you're welcome to make them both), but they should be _clear_.

### Break up paragraphs for easy reading

We want to make these documents scannable & easily readable. Every time you're talking about a new idea or concept, or you realize the sentence you're writing doesn't add on to the previous one – make it a new paragraph.

Err on the side of having too many paragraphs if possible, even if a paragraph is only one or two sentences. It'll be easier to read.

### Use triple-tick code blocks for highlighting on Github

Use triple-tick code blocks with languages to make code auto-syntax-highlighted.

    ```js
      Markdown.render('stuff')
    ```

You can read more about it [here](https://help.github.com/articles/github-flavored-markdown/#syntax-highlighting) if you're unfamiliar.

### Test your markdown with Github Flavored Markdown

Test your code using the [Github markdown API endpoint](https://developer.github.com/v3/markdown/#render-an-arbitrary-markdown-document), or a tool that uses it, to make sure it's working. Good options are:

- [Markdown Preview for Sublime](https://packagecontrol.io/packages/Markdown%20Preview)
- [moo.js](https://www.npmjs.com/package/moo.js)
- [Marko](https://itunes.apple.com/us/app/marko/id607997198?mt=12)
- [Marked 2](http://marked2app.com/)

### Lesson, lab, and homework branches

If you're working on a section of the prework, create a new fork and a new branch that has a semantically meaningful name.

### Pull Requests

When you are finished with your suggested edits, make a pull request back into master branch.

When it comes time to review/revise, we can add comments & notes to that pull request, make any necessary changes, and then merge it in right on Github.

### Variable names

`camelCase` is preferred

#### Booleans use is or has

```
hungry
foodInFridge
```

```
isHungry
hasFoodInFridge
```

#### Curly braces on same line

```
// bad
switch
  {
while
  {
```

```
// good
switch {
```
