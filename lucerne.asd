(asdf:defsystem lucerne
  :version "0.1"
  :author "Fernando Borretti"
  :license "MIT"
  :depends-on (:clack
               :cl-annot
               :trivial-types
               :clack-errors
               :eco
               :anaphora
               :log4cl)
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "app")
                 (:file "views")
                 (:file "handlers")
                 (:file "http"))))
  :description "A Clack-based microframework."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op lucerne-test))))