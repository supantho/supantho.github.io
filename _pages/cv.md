---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

<!-- Optional: drop a PDF into the files/ directory and uncomment the line below to link it. -->
<!-- [Download my full CV (PDF)](/files/cv.pdf) -->

Education
======
* Ph.D. in *(program)*, Princeton University, *(expected year)*
* *(Prior degree, institution, year)*

Research interests
======
* Interpretability and representation learning in multilingual language models
* Computational and historical linguistics
* Cross-lingual generalization and transfer

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Talks & presentations
======
* *Similarity All The Way Up: How Large Language Models Implicitly Recover Hierarchical Structure* — oral presentation, CogSci 2026.

Skills
======
* *(e.g. Python, PyTorch, NLP, statistical analysis — fill in your own)*

Service and leadership
======
* *(reviewing, mentoring, organizing, etc.)*
