# Contributing to Fundamentals

## Getting Started

Fundamentals is a [GitBook](https://github.com/GitbookIO/gitbook).

GitBook can be installed from NPM using:

```
$ npm install
```

Run a local copy at http://localhost:4000 with:

```
$ npm start
```

Chapters are written in markdown files and compiled down to HTML inside `_book`

To build the static website use:

```
$ gitbook build
```

> Warning! Inline code blocks ie single back ticks are not properly escaping HTML entities.
> To work around this use `<code>`

```
<code>"This works"</code>
`"This doesn't"`
```

### Making Changes

To make changes to the content, fork the GitHub repo and file a pull request.

Please take a look at existing [issues](https://github.com/generalassembly/fundamentals/issues) to find ways to contribute.

### Quiz Format

Quizzes are hosted in Typeform and are linked from this project. To suggest changes to quizzes, shoot an email to AskImmersives@generalassemb.ly.

### Deployment

Builds and deploys are handled automatically via Travis CI.

### Additional Resources

- [Gitbook](https://github.com/GitbookIO/gitbook)
- [AirBnB Style Guide](https://github.com/airbnb/javascript)
