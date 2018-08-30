(cl:defpackage :hello-bodge-physics/basic
  (:use :cl :cl-bodge.engine :cl-bodge.physics))

(cl:in-package :hello-bodge-physics/basic)

(defun run-example ()
  ;; Start engine with the physics system enabled
  (startup '(:engine (:systems (physics-system))))

  (unwind-protect
       ;; Our universe would be a 2D one in this example
       (let* ((universe (make-universe :2d))
              ;; Just a body without a shape and with default mass
              (body (make-rigid-body universe)))
         ;; Lets setup a non-zero gravity for our body to have a free fall
         (setf (gravity universe) (vec2 0 -10))
         ;; And here our simulation loop
         (loop repeat 100
               ;; We just observe universe every 0.014s
               do (observe-universe universe 0.014)
                  ;; And check body position every iteration
                  (format t "~&Body position: ~A" (body-position body)))
         ;; Cleaning up universe
         (dispose body)
         (dispose universe))
    ;; Shutting down engine to free resources acquired by the engine
    (shutdown)))

(export 'run-example)
