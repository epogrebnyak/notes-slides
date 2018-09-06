# slide-tryout

Markdwon-based presentation may look ugly and require additinal setups. Which way is to go?

## tl;dr

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

- foundational javascript library: https://github.com/hakimel/reveal.js (42k stars)
- https://gitpitch.com/
- list of libraries printable to PDF via Puppeteer: https://github.com/astefanutti/decktape
- [landslide](https://github.com/adamzap/landslide) uses outdated template and fails to show in full-screen mode

## My results
- `make.bat` creates raw html files which [need dependencies to render](https://github.com/jgm/pandoc/wiki/Using-pandoc-to-produce-reveal.js-slides)
- standalone viewable files are [slidy](https://www.w3.org/Talks/Tools/Slidy2/Overview.html#(1)) and dzslides
- dzslides misplaces text
- slidy format is the winner:

```
pandoc -t slidy -s presentation.md -o presentation-slidy.html 
```
