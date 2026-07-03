---
title: "Research"
permalink: /research/
author_profile: true
---

My research asks a simple question with deep implications: **what do language models learn about the structure of human language, and does it look anything like what linguists have discovered?**

## Recovering linguistic phylogeny from LLMs

Human languages are related in a tree-like, historical structure — the *phylogeny* of language families. Indo-European, for example, splits into Germanic, Romance, Slavic, Indo-Aryan, and other branches, each with its own internal structure, all reconstructed over two centuries of historical linguistics.

Multilingual language models are never given this tree. Yet when I measure the pairwise "distance" between languages *inside* a model's representations, the structure that emerges aligns strikingly well with established reference phylogenies. Using a **token-first discretization** of representations and comparing the resulting trees against the Heggarty et al. (2023) reference and Glottolog, I find a path-kernel correlation of roughly **0.66** between XLM-RoBERTa's language distances and the reference tree across 37 Indo-European languages.

More importantly, the *degree* to which a model recovers this structure **predicts its cross-lingual generalization** on downstream tasks such as XNLI. The recovered geometry is functionally meaningful — it's not just an artifact.

This work was accepted for an **oral presentation at CogSci 2026**. See [Publications](/publications/) for details.

## Broader interests

- **Interpretability & representation learning** — what structure lives inside multilingual models, and at which layers it emerges.
- **Computational historical linguistics** — bridging data-driven model geometry with the reconstructed history of language families.
- **Cross-lingual transfer** — why some languages generalize to others, and what representational similarity has to do with it.
- **The limits of the analogy** — orthography, script, and training-data imbalance all confound the "models recover linguistics" story. Understanding those boundaries is as important as the positive result.

*Interested in collaborating or chatting about any of this? Email me at [sr2982@princeton.edu](mailto:sr2982@princeton.edu).*
