;;; symex-interface-scheme.el --- An evil way to edit Lisp symbolic expressions as trees -*- lexical-binding: t -*-

;; URL: https://github.com/countvajhula/symex-mode
;; Package-Requires: ((emacs "24.4") (cl-lib "0.6.1") (lispy "0.26.0") (paredit "24") (evil-cleverparens "20170718.413") (dash-functional "2.15.0") (evil "1.2.14") (smartparens "1.11.0") (racket-mode "20181030.1345") (geiser "0.10") (evil-surround "1.0.4") (hydra "0.15.0"))

;; This program is "part of the world," in the sense described at
;; http://drym.org.  From your perspective, this is no different than
;; MIT or BSD or other such "liberal" licenses that you may be
;; familiar with, that is to say, you are free to do whatever you like
;; with this program.  It is much more than BSD or MIT, however, in
;; that it isn't a license at all but an idea about the world and how
;; economic systems could be set up so that everyone wins.  Learn more
;; at drym.org.

;;; Commentary:
;;
;; Interface for the Scheme language
;;

;;; Code:


(require 'geiser)

(declare-function geiser-eval-last-sexp "ext:geiser-mode")
(declare-function geiser-eval-definition "ext:geiser-mode")
(declare-function geiser-doc-symbol-at-point "ext:geiser-mode")
(declare-function geiser-mode-switch-to-repl "ext:geiser-mode")


(defun symex-eval-scheme ()
  "Eval Scheme symex."
  (interactive)
  (geiser-eval-last-sexp nil))

(defun symex-eval-definition-scheme ()
  "Eval entire containing definition."
  (geiser-eval-definition nil))

(defun symex-eval-pretty-scheme ()
  "Evaluate symex and render the result in a useful string form."
  (interactive)
  (symex-eval-scheme))

(defun symex-eval-print-scheme ()
  "Eval symex and print result in buffer."
  (interactive)
  nil)

(defun symex-describe-symbol-scheme ()
  "Describe symbol at point."
  (interactive)
  (geiser-doc-symbol-at-point))

(defun symex-repl-scheme ()
  "Go to REPL."
  (geiser-mode-switch-to-repl))


(provide 'symex-interface-scheme)
;;; symex-interface-scheme.el ends here
