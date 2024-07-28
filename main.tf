resource "newrelic_alert_policy" "mypolicy" {
  name =  var.policy_name
}

resource "newrelic_nrql_alert_condition" "mypolicy" {
  policy_id                      = newrelic_alert_policy.mypolicy.id
  count                         = length( var.newrelicconfig)
  account_id                     = var.account_id
  type                           = var.newrelicconfig[count.index].type
  name                           =  var.newrelicconfig[count.index].name
  description                    = var.newrelicconfig[count.index].type
  runbook_url                    = var.newrelicconfig[count.index].type
  enabled                        = var.newrelicconfig[count.index].enabled
  violation_time_limit_seconds   = var.newrelicconfig[count.index].violation_time_limit_seconds
  fill_option                    = var.newrelicconfig[count.index].fill_option
  fill_value                     =  var.newrelicconfig[count.index].fill_value
  aggregation_window             = var.newrelicconfig[count.index].aggregation_window
  aggregation_method             = var.newrelicconfig[count.index].aggregation_method
  aggregation_delay              =var.newrelicconfig[count.index].aggregation_delay
  expiration_duration            =var.newrelicconfig[count.index].expiration_duration
  open_violation_on_expiration   = var.newrelicconfig[count.index].open_violation_on_expiration
  close_violations_on_expiration = var.newrelicconfig[count.index].close_violations_on_expiration
  slide_by                       = var.newrelicconfig[count.index].slide_by

  nrql {
    query =  var.newrelicconfig[count.index].query
  }

  critical {
    operator              = var.newrelicconfig[count.index].operator
    threshold             =var.newrelicconfig[count.index].threshold
    threshold_duration    = var.newrelicconfig[count.index].threshold_duration
    threshold_occurrences = var.newrelicconfig[count.index].threshold_occurrences
  }

  warning {
    operator              = var.newrelicconfig[count.index].warning_operator
    threshold             = var.newrelicconfig[count.index].threshold
    threshold_duration    = var.newrelicconfig[count.index].threshold_duration
    threshold_occurrences =var.newrelicconfig[count.index].threshold_occurrences
  }
}
