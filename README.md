# HSRM LaTeX Thesis Template

This repository is a starter template for bachelor and project theses at
Hochschule RheinMain. It is intentionally small: edit the metadata, write your
chapters, add sources, and build `main.pdf`.

## Preview

| Cover page                                    | Table of contents                                  |
| --------------------------------------------- | -------------------------------------------------- |
| ![Cover page preview](docs/preview-cover.png) | ![Table of contents preview](docs/preview-toc.png) |

The `docs/` folder is only used for repository presentation assets such as these
preview images. You can safely delete it when starting your own thesis.

## Quick Start

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
- `docs/`: optional preview assets for the GitHub repository.
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

Use `\ac{API}` in the text.

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
- Update the preview images in `docs/` if you publish a changed version of the
  template.

## License and Logo Notice

This template is licensed under the MIT License, except for third-party brand
assets.

The Hochschule RheinMain logos in `images/` are brand assets of Hochschule
RheinMain. They are included only to make this unofficial thesis template usable
for HSRM documents. They are not covered by this repository's MIT License, and
their inclusion does not imply endorsement by or affiliation with Hochschule
RheinMain. Check the university's current corporate design and logo usage rules
before redistributing or publishing modified versions.
