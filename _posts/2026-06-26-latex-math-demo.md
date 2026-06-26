---
layout: post
title: "A Short Note on LaTeX Math in Jekyll"
date: 2026-06-26
math: true
permalink: /blog/latex-math-demo/
---

This is a small example post showing how to write math in Markdown and render it
with MathJax on the website.

Inline equations work with dollar signs, such as $E = mc^2$ or
$p_\theta(y \mid x)$.

Block equations use double dollar signs:

$$
\mathcal{L}(\theta)
= -\sum_{i=1}^{N} y_i \log p_\theta(y_i \mid x_i).
$$

You can also write multi-line derivations:

$$
\begin{aligned}
\nabla_\theta \mathcal{L}(\theta)
&= -\sum_{i=1}^{N} y_i \nabla_\theta \log p_\theta(y_i \mid x_i) \\
&= -\sum_{i=1}^{N} \frac{y_i}{p_\theta(y_i \mid x_i)}
   \nabla_\theta p_\theta(y_i \mid x_i).
\end{aligned}
$$

Code blocks still work as usual:

```python
import math

def softmax_score(logit):
    return math.exp(logit)
```

For future posts, copy this file into `_posts/`, rename it with the
`YYYY-MM-DD-title.md` pattern, and set `math: true` only when the post needs
LaTeX rendering.
