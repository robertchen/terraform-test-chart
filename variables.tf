variable "invoice_file_load_s3_kafka_session_timeout" {
  description = "Value for sessionTimeout for kafka consumers (in ms) - the maximum time to process a message.  see https://kafka.js.org/docs/faq#what-does-it-mean-to-get-rebalance-in-progress-errors"
  default =     "1800000"
}

variable "invoice_file_load_s3_kafka_rebalance_timeout" {
  description = "Value for rebalanceTimeout for kafka consumers (in ms)"
  default =     "1800000"
}
