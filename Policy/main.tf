module "hana_backup_policy" {
    source              = "./modules/backup_policy"
    for_each            = var.hana_backup_policy
    hana_backup_name    = each.value.hana_backup_name
    rg_name             = each.value.rg_name
    rsv_name            = each.value.rsv_name
}