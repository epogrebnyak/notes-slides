# slide-tryout

Markdwon-based presentation may look ugly and require additinal setups before working. Which way to go?

## tl;dr

[Slidy!](https://www.w3.org/Talks/Tools/Slidy2/)

```
pandoc -t slidy -s presentation.md -o presentation-slidy.html 
```

## My usercase 

- separate content from view 
- hate editing CSS
- want less setup/dependecies
- prefer newer, actively developed libraries to older ones
- want a clean view of presentation screen 

## Some things that (almost) work

- foundational javascript library: [reveal.js](https://github.com/hakimel/reveal.js) (42k stars)
- [gitpitch](https://gitpitch.com/)
- libraries printable to PDF via Puppeteer: [decktape](https://github.com/astefanutti/decktape)
- [landslide](https://github.com/adamzap/landslide) uses outdated template and fails to show in full-screen mode


## My results

- pandoc can [produce slides](https://pandoc.org/MANUAL.html#producing-slide-shows-with-pandoc)
- `make.bat` creates raw html files which [need dependencies to render](https://github.com/jgm/pandoc/wiki/Using-pandoc-to-produce-reveal.js-slides)
- standalone viewable files are [slidy](https://www.w3.org/Talks/Tools/Slidy2/Overview.html#(1)) and dzslides
- dzslides misplaces text
- slidy format is the winner for standalone html presentation
