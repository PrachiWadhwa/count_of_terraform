
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
policy_name= "mylinkpolicy"
newrelicconfig = [
    
{
    type              ="static"
    name              = "Condition 1"
    description       = "Alert when transactions are taking too long"
    query            = "SELECT average(duration) FROM Transaction where appName = 'mylink'"
     runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    operator              = "above"
    threshold             = 1
    threshold_duration    = 60
    threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  
  },
 {
    type              ="static"
    name              = "Condition 2"
    description       = "Alert when httpsttatus code is high"
    query             = "SELECT count(http.statusCode)FROM Transaction WHERE appName='mylink'"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    operator              = "above"
    threshold             = 1
    threshold_duration    = 60
    threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
   
  },
{
    type              ="static"
    name              = "Condition 3"
    description       = "Alert when total time is high "
    query             = "SELECT  sum(totalTime) FROM Transaction WHERE appName='mylink'"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    operator              = "above"
    threshold             = 1
    threshold_duration    = 60
    threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  
    
  },
 {
    type              ="static"  
    name              = "Condition 4"
    description       = "Alert when duration is high  on ping"
    query             = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor' FACET location"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    operator              = "above"
    threshold             = 1
    threshold_duration    = 60
    threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  
  }, 
 {
    type              ="static"  
    name              = "Condition 5"
    description       = "Alert when duration is high  on "
    query             = "SELECT count(*) FROM SyntheticCheck WHERE monitorName = 'pagelink'AND result !='FAILED'"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    operator              = "above"
    threshold             = 1
    threshold_duration    = 60
    threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
    
  }
  ]

