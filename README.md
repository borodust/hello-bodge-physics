# hello-bodge-physics

Step-by-step introduction into `cl-bodge` physics system.

# Installing

```lisp
;; Install `cl-bodge` quicklisp distribution if not installed yet:
(ql-dist:install-dist "http://bodge.borodust.org/dist/org.borodust.bodge.txt" :replace t :prompt nil)

;; Update main quicklisp dist just in case so no outdated packages got through during system loading
(ql:update-dist "quicklisp")
```

# Loading and running

```lisp
;; Load the example itself:
(ql:quickload :hello-bodge-physics/basic)
;; And run it!
(hello-bodge-physics/basic:run-example)
```

# Documentation, guide and sources

This system is written in literate programming style. Actual source code and documentation is
contained within [hello-bodge-physics.org](hello-bodge-physics.org) file which is also the
guide itself.
