;; Install quicklisp
(load "~/.quicklisp/quicklisp.lisp")
(quicklisp-quickstart:install :path "~/.quicklisp/")
(ql:add-to-init-file)

;; LTK is a set of CL bindings for the Tk GUI library,
;; which provides a complete CLOS binding to the Tk widget set.
;; It is implemented by means of talking to a Tcl interpreter.
(ql:quickload 'ltk)

;; A Common Lisp library for parallel programming.
(ql:quickload 'lparallel)

;; ASDF
(ql:quickload 'asdf)

;; Collection of portable general purpose utilities.
;; Used by a large number of other projects.
(ql:quickload 'alexandria)

;; Babel is a charset encoding/decoding library,
;; not unlike GNU libiconv, but completely written in Common Lisp.
(ql:quickload 'babel)

;; CLUnit is a Common Lisp unit testing framework.
(ql:quickload 'clunit)

;; Highly useful and fast regular expressions engine.
(ql:quickload 'cl-ppcre)

;; A library to parse and write CSV files.
(ql:quickload 'cl-csv)

;; Supports almost all lisp implementations on all platforms.
(ql:quickload 'cffi)

;; An open-source implementation of Python written in Common Lisp.
(ql:quickload 'clpython)

;; 3d-graphics engine built on-top of OpenGL.
(ql:quickload 'clinch)

;; Set of CFFI bindings to the OpenGL, GLU and GLUT APIs.
(ql:quickload 'cl-opengl)

;; Writing vector graphics on PNG format.
(ql:quickload 'vecto)

;; This is a new c2ffi-based wrapper generator for
;; Common Lisp with a focus,
;; performance, convenience, and completeness.
(ql:quickload 'cl-autowrap)

;; Import and create functions and macros for
;; C functions and record accessors.
(ql:quickload 'cl-plus-c)

;; Web-server
(ql:quickload 'hunchentoot)

;; An interface to PostgreSQL
(ql:quickload 'postmodern)

;; Common-Lisp Egregious Matrices (CLEM)
(ql:quickload 'clem)

;; A Common Lisp framework for solving partial
;; differential equations with the help of the
;; finite element method (FEM).
(ql:quickload 'femlisp)

;; Update all dists and quicklisp client
(ql:update-all-dists)
(ql:update-client)
