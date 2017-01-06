---
title: Semantic Versioning Regular Expression
tags: semantic versioning
layout: post
author: jason
tags: [message]
category: Code
---

The following is a breakdown of a complete regular expression for semantic versioning strings.

## Semantic Version

```bash
^(^[1-9]\d*)(\.([0?]|[1-9]\d*)){0,2}-(?'pre'([0?]|[1-9]\d*)|(\d*[A-Za-z-]+\d*)+)(\.\pre')*+(?'meta'([0?]|[1-9]\d*)|(\d*[A-Za-z-]+\d*)+)(.\meta')*$
```

### Version

```bash
(^[1-9]\d*)(\.([0?]|[1-9]\d*)){0,2}
```

- **Major**: `(^[1-9]\d*)`
- **Minor and Patch**: `.([0?]|[1-9]\d*)`

### Pre-Version

```bash
-(?'pre'([0?]|[1-9]\d*)|(\d*[A-Za-z-]+\d*)+)(\.\g'pre')*
```

- **pre**: names the capture group for re-use with dot separated components.
- **Number**: `([0?]|[1-9]\d*)`
- **Non-Number**: `(\d*[A-Za-z-]+\d*)+`

### Build Metadata

```bash
\+(?'meta'([0?]|[1-9]\d*)|(\d*[A-Za-z-]+\d*)+)(.\g'meta')*
```

- **meta**: names the capture group for re-use with dot separated components.
- **Number**: `([0?]|[1-9]\d*)`
- **Non-Number**: `(\d*[A-Za-z-]+\d*)+`
