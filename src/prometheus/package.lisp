(in-package #:cl-user)

(defpackage #:prometheus
  (:use #:cl #:alexandria #:quantile-estimator)
  (:nicknames #:prom)
  (:export *default-registry*
           #:registry
           #:register
           #:unregister
           #:registeredp
           #:make-registry
           #:collect
           #:collector
           #:collector-metric-name
           #:metric-family-name
           #:metric-family-type
           #:metric-family-help
           #:metric-family-labels
           #:get-metric
           #:metric
           #:metric-value
           #:metric-labels
           #:simple-metric
           ;; strandard metric types
           #:counter
           #:make-counter
           #:counter-metric
           #:counter.inc
           #:counter.reset
           #:int-counter
           #:make-int-counter
           #:gauge
           #:make-gauge
           #:gauge-metric
           #:gauge.set
           #:gauge.reset
           #:bucket-bound
           #:bucket-count
           #:histogram
           #:histogram-metric
           #:histogram-buckets
           #:histogram-count
           #:histogram-sum
           #:make-histogram
           #:histogram.observe
           #:histogram.time
           #:simple-summary
           #:summary
           #:simple-summary-metric
           #:summary-metric
           #:summary-count
           #:summary-sum
           #:summary-quantiles
           #:make-simple-summary
           #:make-summary
           #:summary.observe
           #:summary.time
           ;; buckets           
           #:generate-linear-buckets
           #:generate-exponential-buckets
           ;; errors
           #:base-error
           #:invalid-value-error
           #:invalid-label-name-error
           #:invalid-label-value-error
           #:invalid-label-count-error
           #:invalid-labels-error
           #:invalid-metric-name-error
           #:invalid-metric-help-error
           #:invalid-buckets-error
           #:invalid-bucket-bound-error
           #:collectable-already-registered-error))
