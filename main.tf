resource "newrelic_alert_policy" "mypolicy" {
  name = "mypolicy"
}

resource "newrelic_nrql_alert_condition" "mypolicy" {
  count                          =  length( var.alerts_name)
  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.mypolicy.id
  type                           = "static"
  name                           =  var.alerts_name[count.index]
  description                    = "Alert when transactions are taking too long"
  runbook_url                    = "https://www.example.com"
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query =  var.nrql[count.index]
  }

  critical {
    operator              = "above"
    threshold             = 5.5
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 3.5
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}
