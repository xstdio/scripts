# run powershell script
Set-ExecutionPolicy RemoteSigned

# remove 3x CRLF
(Get-Content test_in.txt -Raw).Replace("`r`n`r`n`r`n","`r`n") > test_out.txt