(asdf:defsystem :hello-bodge-physics
  :description "Guide to physics system of cl-bodge"
  :version "1.0.0"
  :author "Pavel Korolev"
  :license "MIT"
  :mailto "dev@borodust.org"
  :depends-on (cl-bodge/physics cl-bodge/physics/3d cl-bodge/physics/2d bodge-appkit)
  :pathname "src"
  :serial t)

(asdf:defsystem :hello-bodge-physics/basic
  :description "Simplest possible example for cl-bodge/physics"
  :version "1.0.0"
  :author "Pavel Korolev"
  :license "MIT"
  :mailto "dev@borodust.org"
  :depends-on (hello-bodge-physics)
  :pathname "src/basic/"
  :serial t
  :components ((:file "app")))
