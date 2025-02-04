set shell := ["sh", "-c"]

resume_md := "resume.md"
resume_html := "resume.html"
style_css := "style.css"

default: build

build:
    @pandoc {{resume_md}} -f markdown -t html -c {{style_css}} -s -o {{resume_html}}

clean:
    @rm -f {{resume_html}}
