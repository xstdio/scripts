# Read and split file based on the number of lines
$file = '.\test-large_out.csv'
$out = 'test-large_out_split'
$line = 100000
$i=0; 
Get-Content $file -ReadCount $line | %{$i++; $_ | Out-File .\split_$i.csv}
