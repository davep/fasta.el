;;; fasta.el --- Mode for working with fasta files -*- lexical-binding: t -*-
;; Copyright 2018 by Dave Pearson <davep@davep.org>

;; Author: Dave Pearson <davep@davep.org>
;; Version: 0.01
;; Keywords: files, dna, fasta, bioinformatics
;; URL: https://github.com/davep/fasta.el
;; Package-Requires: ((emacs "24"))

;; This program is free software: you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by the
;; Free Software Foundation, either version 3 of the License, or (at your
;; option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
;; Public License for more details.
;;
;; You should have received a copy of the GNU General Public License along
;; with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; fasta.el provides a mode for working with FASTA format files.

;;; Code:

(defgroup fasta nil
  "Mode for working with FASTA files."
  :group 'text)

(defface fasta-adenine-face
  '((t :foreground "green"))
  "Face to use when showing adenine."
  :group 'fasta)

(defface fasta-cytosine-face
  '((t :foreground "blue"))
  "Face to use when showing cytosine."
  :group 'fasta)

(defface fasta-guanine-face
  '((t :foreground "red"))
  "Face to use when showing guanine."
  :group 'fasta)

(defface fasta-thymine-face
  '((t :foreground "black"))
  "Face to use when showing thymine."
  :group 'fasta)

(defvar fasta-font-lock
  '(("^>.*$" . 'font-lock-function-name-face)
    ("^#.*$" . 'font-lock-comment-face)
    ("[Aa]"  . 'fasta-adenine-face)
    ("[Cc]"  . 'fasta-cytosine-face)
    ("[Gg]"  . 'fasta-guanine-face)
    ("[Tt]"  . 'fasta-thymine-face))
  "Font lock rules for `fasta-mode'.")

(define-derived-mode fasta-mode fundamental-mode "fasta"
  "Major mode for editing fasta files."
  (setq font-lock-defaults '(fasta-font-lock)))

(provide 'fasta)

;;; fasta.el ends here
