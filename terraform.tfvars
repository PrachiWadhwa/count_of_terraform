

newrelicconfig=[
    {name ="alert1",nrql= "SELECT average(duration) FROM Transaction where appName = 'mylink'"},
    {name="alert2", nrql="SELECT count(http.statusCode)FROM Transaction WHERE appName='mylink'"}
]
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
