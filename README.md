# HSRM LaTeX Thesis Template

This repository is a starter template for bachelor and project theses at
Hochschule RheinMain. It is intentionally small: edit the metadata, write your
chapters, add sources, and build `main.pdf`.

## Preview

| Cover page                                    | Table of contents                                  |
| --------------------------------------------- | -------------------------------------------------- |
| ![Cover page preview](docs/preview-cover.png) | ![Table of contents preview](docs/preview-toc.png) |

For a full generated example, see the
[PDF preview](https://github.com/johind/hsrm-latex-template/releases/latest/download/preview.pdf)
attached to the latest release.

## Getting the Template

If you are not used to Git or GitHub, use the ZIP download:

1. Open the [latest release](https://github.com/johind/hsrm-latex-template/releases/latest).
2. Download the source-code ZIP file.
3. Unpack it and start editing the extracted folder.

If you work with Git, clone the repository instead:

```sh
git clone https://github.com/johind/hsrm-latex-template.git
cd hsrm-latex-template
```

## Quick Start

You need a LaTeX distribution with `latexmk`, such as TeX Live or MiKTeX. The
template also works well on Overleaf.

1. Edit `config/metadata.tex`.
2. Write your chapters in `sections/`.
3. Add bibliography entries to `references.bib`.
4. Build the PDF:

```sh
latexmk -pdf main.tex
```

To clean generated build files:

```sh
latexmk -c
```

## Structure

- `main.tex`: document order and optional front/back matter.
- `config/metadata.tex`: title, author, supervisors, programme, submission date.
- `config/preamble.tex`: packages, layout, PDF metadata, listing style.
- `sections/`: English-named files for the cover page, front matter, chapters,
  and appendix.
- `images/`: logo and image assets used by the thesis.
- `docs/`: preview assets for the GitHub repository. You can delete this folder
  when starting your own thesis.
- `references.bib`: BibTeX bibliography database.

## Common Tasks

### Add a Figure

```tex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{images/my-figure.png}
  \caption{Short, descriptive caption}
  \label{fig:my-figure}
\end{figure}
```

Refer to it with `Abbildung~\ref{fig:my-figure}`.

### Add a Citation

Add the source to `references.bib`, then cite it:

```tex
\cite{my-source-key}
```

### Add an Acronym

Add acronyms in `sections/acronyms.tex`:

```tex
\acro{API}{Application Programming Interface}
```

Use `\ac{API}` in the text. On first use it prints the long form with the
short form in parentheses; later uses print only the short form. Use `\acf` for
the full form, `\acs` for the short form, and `\acl` for the long form. The
[Namsu acronym package overview](https://www.namsu.de/Extra/pakete/Acronym.html)
has a compact reference for these commands and plural forms.

### Add a Numbered Equation

Only number equations that you reference in the text:

```tex
\begin{equation}
  U = R \cdot I
  \label{eq:ohms-law}
\end{equation}
```

Refer to it with `Gleichung~\eqref{eq:ohms-law}`. Use `siunitx` for physical
units, for example `\qty{5}{\volt}`.

## Writing Checklist

- Keep the table of contents readable; avoid turning every paragraph into a
  subsection.
- Let LaTeX generate references to chapters, sections, figures, tables,
  listings, and equations with `\label` and `\ref`.
- Refer to every figure and table in the text, ideally before the object is
  shown.
- Choose print-friendly image formats and colors, especially for screenshots,
  diagrams, and measurement plots.
- Put long listings, derivations, datasheets, and supplementary files in the
  appendix instead of interrupting the main argument.
- Keep the abbreviation list alphabetically sorted and include only
  abbreviations that are actually used.

## Before Submission

Check the current requirements from your programme, examination regulations, and
supervisor. In particular:

- Remove unused optional blocks from `main.tex`, such as lists, acronyms, or the
  appendix.
- Replace `\today` with a fixed submission date in `config/metadata.tex`.
- Verify title-page wording, margins, citation style, digital submission rules,
  and whether a printed copy is required.
- Add the official declaration of independent work required by your programme or
  examination office. This template intentionally does not include one.
- Do not publish or redistribute a copy that contains the official logo unless
  you have your own permission from Hochschule RheinMain.
- Update the preview images in `docs/` if you publish a changed version of the
  template.

## License

The LaTeX template source is licensed under the MIT License.

### Logo Notice

The official Hochschule RheinMain logo included in `images/logo.png` is not part
of the MIT-licensed material. Permission to include the logo was granted to the
maintainer of this repository for this exact unofficial template repository
only. That permission is not transferable.

Do not publish a fork, clone, mirror, release archive, generated PDF,
screenshot, or other redistributed copy that contains the logo unless you have
obtained your own permission from Hochschule RheinMain. If you publish or
redistribute a modified version of this template, remove or replace
`images/logo.png` and any generated assets that show it, such as preview images
or PDFs.

This project is not an official Hochschule RheinMain template.
