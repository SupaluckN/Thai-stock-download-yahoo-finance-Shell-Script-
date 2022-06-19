
from_unix_time=$(date --date='20220601EDT' +"%s")
to_unix_time=$(date --date='20220605EDT' +"%s")

stock="SCB.BK"

url="https://query1.finance.yahoo.com/v7/finance/download/${stock}?period1=${from_unix_time}1&period2=${to_unix_time}&interval=1d&events=history&includeAdjustedClose=true"

echo $url