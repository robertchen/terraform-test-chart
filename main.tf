resource "helm_release" "hello-world" {
  
  provider = helm.stable

  name      = "hello-world"
  chart     = "${path.module}/charts/hello-world"

  force_update  = false
  recreate_pods = true
  timeout       = 300

  set_string {
    name  = "kafka-session-timeout-ms"
    value = var.invoice_file_load_s3_kafka_session_timeout
  }

  set_string {
    name =  "kafka-rebalance-timeout-ms"
    value = var.invoice_file_load_s3_kafka_rebalance_timeout
  }

  values = [
    file("${path.module}/values/values.yaml")
  ]
}
