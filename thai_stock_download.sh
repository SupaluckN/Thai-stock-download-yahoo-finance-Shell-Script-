

from_unix_time=$(date --date='1655251200' +"%s")
to_unix_time=$(date --date='1655683200' +"%s")

#stock="SCB.BK"
#for stock in kbank.bk scb.bk; do

for stock in $(<th_banks.txt); do

    stock=${stock^^}
    url="https://query1.finance.yahoo.com/v7/finance/download/${stock}?period1=${from_unix_time}&period2=${to_unix_time}&interval=1d&events=history&includeAdjustedClose=true"

    echo $url

    curl -o "${stock}.csv" "${url}"
    cat "${stock}.csv"

done