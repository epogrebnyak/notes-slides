for %%A in (s5 slidy slideous dzslides revealjs) do (
    pandoc -t %%A -s slide.md -o %%A.html
)