### ref: https://www.jokecamp.com/blog/invoke-restmethod-powershell-examples/
### variable
$match_all_query = @{match_all=@{}}
### payload
$body = @{query=$match_all_query}
$json = $body | ConvertTo-Json
$json
$response = Invoke-RestMethod 'http://localhost:9200/default/_search' -Method POST -Body $json -ContentType 'application/json'
$response