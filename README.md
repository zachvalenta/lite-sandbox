# what is this?

sandbox for SQLite

# how to use?

1) install dependencies - `poetry install`

2) set Git hooks - `make hooks`

3) seed db - `make seed`

There are a few more rules in the Makefile:

```Makefile
======================================================================

🛠  UTILS

hooks:      set Git hooks w/ pre-commit
seed:       create and seed db
lite:       connect w/ litecli
vd:         connect w/ visidata
lint:       lint using sqlfluff
todo:       view todos

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies

======================================================================
```
