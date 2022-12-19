---
title: "Awesome report title"
subtitle: "Even more awesome subtitle"
author: ["Bram Vandenbussche", "bram@vandenbussche.me"]
date: Januari 15, 2023

book: true
lang: "en"
titlepage: true
titlepage-color: "DC143C"
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "FFFFFF"
titlepage-rule-height: 2

code-block-font-size: \scriptsize

classoption: oneside
output:
  pdf_document:
    keep_tex: true
    toc: true
    toc_depth: 6
    highlight: "zenburn"
    number_sections: true
    pandoc_args: ["--top-level-division=chapter"]
    template: eisvogel
---
