# Working with This Template

This repository is a starting point for an academic thesis. Follow the user's
request and preserve their authorship and decisions. The guidance below is a
default; explicit user instructions take precedence.

## Repository Map

- Edit personal and submission details in `config/metadata.tex`.
- Change document order and optional lists in `main.tex`.
- Write chapter content in `sections/` and manage sources in `references.bib`.
- Change `config/preamble.tex` only when packages, layout, or typography need
  to change.
- Read `README.md` before making structural or toolchain changes.

## Working Principles

- Keep changes focused and preserve user-written content unless asked to
  revise or remove it.
- Preserve the German document defaults and pdfLaTeX compatibility unless the
  user requests a different language or toolchain.
- Do not invent sources, quotations, bibliographic metadata, measurements, or
  research results. Flag missing information instead. When adding a source,
  use metadata supplied by the user or verified against the source.
- Preserve labels, citations, references, and existing file boundaries when
  practical.
- Prefer English filenames for new files to match the existing structure. Do
  not rename existing user files solely for consistency.
- Treat programme regulations and supervisor instructions as authoritative;
  they override this template.

## Validation

After changing LaTeX, run `make` or `latexmk -pdf main.tex` when the required
tools are available. Fix errors caused by the change and report any unresolved
build errors or relevant warnings.
