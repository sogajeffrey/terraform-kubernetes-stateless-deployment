resource "kubernetes_deployment" "deployment" {
  metadata {
    name      = var.name
    namespace = var.namespace
    labels = {
      name = var.name
    }
  }
  spec {
    replicas = 1
    strategy {
      type = var.deployment_strategy
    }
    selector {
      match_labels = {
        name = var.name
      }
    }
    template {
      metadata {
        labels = {
          name = var.name
        }
      }
      spec {
        automount_service_account_token = false
        enable_service_links            = false
        container {
          name  = var.name
          image = var.image
          env_from {
            config_map_ref {
              name = var.config_map
            }
          }
          port {
            name           = var.port_name
            container_port = var.port
            protocol       = var.port_protocol
          }
          image_pull_policy = "IfNotPresent"
        }
      }
    }
  }
}

resource "kubernetes_service" "service" {
  metadata {
    name      = var.name
    namespace = var.namespace
    labels = {
      app = var.name
    }
  }
  spec {
    port {
      name        = var.port_name
      protocol    = var.port_protocol
      port        = var.port
      target_port = var.port_name
    }
    selector = {
      name = var.name
    }
    type = var.svc_type
  }
}