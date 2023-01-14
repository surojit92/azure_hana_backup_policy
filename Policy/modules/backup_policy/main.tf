resource "azurerm_backup_policy_vm_workload" "example" {
  name                = var.hana_backup_name
  resource_group_name = var.rg_name
  recovery_vault_name = var.rsv_name

  workload_type = "SAPHanaDatabase"

  settings {
    time_zone           = "UTC"
    compression_enabled = false
  }

  protection_policy {
    policy_type = "Full"

    backup {
      frequency = "Weekly"
      time      = "23:00"
      weekdays  = ["Friday"] 
    }

    retention_weekly {
      count = 7
      weekdays = ["Friday"]
    }
  }

  protection_policy {
    policy_type = "Incremental"

    backup {
      frequency = "Weekly"
      weekdays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Saturday"] 
      time      = "23:00"
    }

    simple_retention {
      count = 35
    }
  }

  protection_policy {
    policy_type = "Log"

    backup {
      frequency_in_minutes = 15
    }

    simple_retention {
      count = 35
    }
  }
}