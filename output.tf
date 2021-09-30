data "kubernetes_service" "istio-ingressgateway" {
  metadata {
    name = "istio-ingressgateway"
    namespace = "istio-system"
  }
}

output "config_context" {
  value = kind_cluster.k8s-cluster.context
}
output "ingress_ip_address" {
  value = data.kubernetes_service.istio-ingressgateway.status[0].load_balancer[0].ingress[0].ip
}