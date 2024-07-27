no_of_alerts = 5
alerts_name=[
    "alert1",
    "alert2",
    "alert3",
    "alert4",
   "alert5"
]
nrql = [ 
    "SELECT average(duration) FROM Transaction where appName = 'mylink'",
    "SELECT count(http.statusCode)FROM Transaction WHERE appName='mylink'",
    "SELECT  sum(totalTime) FROM Transaction WHERE appName='mylink'",
    "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor' FACET location",
    "SELECT count(*) FROM SyntheticCheck WHERE monitorName = 'pagelink'AND result !='FAILED'"



]
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"