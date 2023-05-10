default: build

# npm install -g sass
# npm install -g capture-website-cli
build:
    sass markdown.scss markdown.css
    pandoc README.md -o index.html -f markdown -t html5 -s --css=./markdown.css --no-highlight -M title=markdown-css -M author="David Peng"
    pandoc https://cdn.jsdelivr.net/gh/jgm/pandoc/MANUAL.txt -o markdown-css-example.html -f markdown -t html5 -s --css=./markdown.css --no-highlight
    capture-website markdown-css-example.html --output=markdown-css-example.png --type=png --overwrite --scale-factor=1 --no-block-ads
    capture-website markdown-css-example.html --output=markdown-css-example-dark-mode.png --type=png --overwrite --scale-factor=1 --no-block-ads --dark-mode
