data "vault_generic_secret" "mysql" {
    path = "awx/mysql_admin"
}

data "vault_generic_secret" "prometheus" {
    path = "awx/prometheus_secrets"
}

resource "kubernetes_secret" "mysql" {
    metadata {
        name      = "mysql"
        namespace = "default"
    }
    data = {
        mysqlPassword = data.vault_generic_secret.mysql.data["dbpasswd"]
    }
    type = "Opaque"
}

resource "kubernetes_secret" "prometheus" {
    metadata {
        name      = "prometheus"
        namespace = "default"
    }

    data = {
        password     = data.vault_generic_secret.prometheus.data["password"]
        bearer_token = data.vault_generic_secret.prometheus.data["bearer_token"]
    }
    type = "Opaque"
}