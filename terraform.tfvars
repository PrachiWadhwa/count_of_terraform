//doubt  h isme

newrelicconfig=[
    {name ="alert1",nrql= "SELECT average(duration) FROM Transaction where appName = 'mylink'",enabled= "true",  fill_value = 1.0},
    {name="alert2", nrql="SELECT count(http.statusCode)FROM Transaction WHERE appName='mylink'",enabled= true,  fill_value  = 1.2}
]
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
