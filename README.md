# Developer CV / Resume

This repository contains my personal CV built using LaTeX. Includes skills,
experience, projects, languages, and more.

## Preview

<img width="2481" height="3508" alt="output-1" src="https://github.com/user-attachments/assets/43ba7b75-67d5-4ad5-92dc-a93d964d3ac2" />

## Usage

Clone the repo using

```sh
git clone https://github.com/knownasnaffy/resume
cd resume
```

Alternatively, you can use the download button from the github repo page. Click
on **Code** > **Download ZIP** and extract the downloaded archive. Then open the
extracted folder inside a terminal.

Make your changes in `main.tex` and compile the CV via

```sh
pdflatex main.tex
```

Voilà! You have your resume ready as main.pdf in the same folder.

## Customization notes

The styles for some blocks like experience, education and project sections are
defined in the `developercv.cls` file, You can modify these styles or adjust
content and layout directly in `main.tex`.

For the more interested folks, detailed instructions are available on the
original template page.

## Misc

I've added a `build_private.sh` script that I use myself to generate a pdf of my
resume that includes my real phone number. This may or may not be useful to you.

## Credits

Original template can be viewed and downloaded from [latextemplates.com](https://www.latextemplates.com/template/developer-cv).

## License

This template is licensed under the MIT License, same as the source template.
