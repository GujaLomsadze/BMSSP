# BMSSP: Bounded Multi-Source Shortest Path

[![PyPI version](https://badge.fury.io/py/bmssp.svg)](https://badge.fury.io/py/bmssp)

A Python implementation of the breakthrough **O(m log^(2/3) n)** shortest path algorithm that breaks the 60-year-old "
sorting barrier" for directed graphs.

### Based on the groundbreaking research: ["Breaking the Sorting Barrier for Directed Single-Source Shortest Paths"](https://arxiv.org/abs/2504.17033)

## 📦 Installation

```bash
pip install bmssp
```

## 🔥 Quick Start

# THIS IS NOT IMPLEMENTED YET

```python
import bmssp
import networkx as nx

# Create a graph
G = nx.DiGraph()
G.add_weighted_edges_from([(0, 1, 4), (0, 2, 2), (1, 2, 1), (2, 3, 5)])

# Find shortest paths from source 0
distances = bmssp.single_source_shortest_path(G, source=0)
print(distances)  # {0: 0, 1: 4, 2: 2, 3: 7}
```
