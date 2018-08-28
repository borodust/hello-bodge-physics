(cl:defpackage :hello-bodge-physics/basic
  (:use :cl :cl-bodge.engine :cl-bodge.physics))

(cl:in-package :hello-bodge-physics/basic)

(defun run-example ()
  (startup '(:engine (:systems (physics-system))))
  (unwind-protect
       (let* ((universe (make-universe :2d))
              (body (make-rigid-body universe)))
         (setf (gravity universe) (vec2 0 -10))
         (loop for i below 100
               do (observe-universe universe 0.014)
                  (log:info "~A" (body-position body)))
         (dispose universe))
    (shutdown)))

(export 'run-example)
