# markdown-css

A CSS stylesheet support almost all Markdown syntax, like headings, lists, tables, blockquotes, footnotes etc.

This is a project inspired by [markdown-css](https://github.com/mrcoles/markdown-css). I extend the original Markdown stylesheet.

## Support many Markdown features

![Screenshots: Pandoc Manual](./markdown-css.png)

It support Pandoc Markdown syntax, include:

- Title block, YAML style
- Headings like [FoldingText](http://www.foldingtext.com/), aligned with chapter text instead of `#`
- Bullet lists
- Ordered lists
- Definition lists
- The four-space rule
- Links
- Tables
- Blockquotes
- Code (blocks)
- Emphasis
- Horizontal rules
- Footnotes

You can see the example below:

[Pandoc Manual HTML Version](http://www.pengdaiwu.com/markdown-css/markdown-css-example.html) and [original source](https://github.com/jgm/pandoc/raw/master/MANUAL.txt).

## Generate example

Generate CSS file:

    sass markdown.scss markdown.css

Generate example based on Pandoc Manual:

    pandoc https://github.com/jgm/pandoc/raw/master/MANUAL.txt -o markdown-css-example.html -f markdown -t html5 -s -c https://necolas.github.io/normalize.css/latest/normalize.css -c ./markdown.css

## Author

David Peng
